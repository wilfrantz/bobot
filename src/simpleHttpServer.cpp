/**
 * @file simpleHttpServer.cpp
 * @author Wilfrantz Dede (wilfrantz@dede.dev)
 * @brief: A simple HTTP server implementation using Boost.Asio
 * @version 0.1
 * @date 2025-01-01
 *
 * @copyright Copyright (c) 2025
 *
 */

#include "simpleHttpServer.h"

using boost::asio::ip::tcp;

namespace httpServer
{
    SimpleHttpServer::SimpleHttpServer(unsigned short port, RequestHandler handler)
        : m_port(port), m_handler(std::move(handler))
    {
    }

    SimpleHttpServer::~SimpleHttpServer()
    {
        // NOTE: Cleanup if necessary
    }

    /*
     * Start listening for incoming requests (blocking call in for now)
     *
     */
    void SimpleHttpServer::run()
    {
        try
        {
            // Create an acceptor to listen on the specified port
            boost::asio::io_context ioContext;
            tcp::acceptor acceptor(ioContext, tcp::endpoint(tcp::v4(), m_port));

            // NOTE: will log to console with spdlog.
            std::cout << "[HttpServer] Listening on port " << m_port << "...\n";

            // Accept connections and handle them
            while (true)
            {
                tcp::socket socket(ioContext);
                acceptor.accept(socket); // Blocking call until a client connects

                // Handle the connection in a separate thread (basic concurrency)
                std::thread([this](tcp::socket s)
                            {
                try {
                    // Read the HTTP request
                    std::string request;
                    {
                        char data[4096];
                        boost::system::error_code ec;
                        std::size_t length = s.read_some(boost::asio::buffer(data), ec);
                        if (!ec && length > 0) {
                            request.append(data, length);
                            // NOTE: Loop until you read all data
                        }
                    }

                    // Parse out the request body (simple approach, not robust!)
                    std::string body;
                    {
                        // Find "\r\n\r\n" that separates headers from body
                        auto pos = request.find("\r\n\r\n");
                        if (pos != std::string::npos) {
                            body = request.substr(pos + 4);
                        }
                    }

                    // Process the request body via your callback
                    std::string responseBody = m_handler(body);

                    // Build a minimal HTTP 200 OK response
                    std::string response = 
                        "HTTP/1.1 200 OK\r\n"
                        "Content-Type: application/json\r\n"
                        "Content-Length: " + std::to_string(responseBody.size()) + "\r\n"
                        "\r\n" +
                        responseBody;

                    // Send response
                    boost::asio::write(s, boost::asio::buffer(response));
                } catch (std::exception& e) {
                    std::cerr << "[HttpServer] Error handling connection: " << e.what() << "\n";
                } }, std::move(socket))
                    .detach();
            }
        }
        catch (std::exception &e)
        {
            std::cerr << "[HttpServer] Exception in run(): " << e.what() << "\n";
        }
    }

    void SimpleHttpServer::stop()
    {
        // NOTE: Implement if needed
    }
}
