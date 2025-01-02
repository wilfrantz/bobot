#ifndef SIMPLE_HTTP_SERVER_H
#define SIMPLE_HTTP_SERVER_H

#include <functional>
#include <string>

#include "header.h"

namespace httpServer
{

    class SimpleHttpServer
    {
    public:
        // The callback type uses to pass the request body to telegram bot logic
        using RequestHandler = std::function<std::string(const std::string &requestBody)>;

        SimpleHttpServer(unsigned short port, RequestHandler handler);
        ~SimpleHttpServer();

        // Start listening for incoming requests (blocking call in this example)
        void run();

        // Stop the server if needed (in a more advanced setup)
        void stop();

    private:
        unsigned short m_port;
        RequestHandler m_handler;

        // TODO: Additional private data for sockets, etc.
        //  Keep an io_context and acceptor here
    };
} // !namespace SimpleHttpServer
#endif // !SIMPLE_HTTP_SERVER_H
