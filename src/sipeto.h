#ifndef SIPETO_H
#define SIPETO_H

#include "header.h"
#include <filesystem>
#include <td/telegram/td_json_client.h>

namespace sipeto
{
    using tcp = boost::asio::ip::tcp;
    namespace http = boost::beast::http;
    class Sipeto
    {
    public:
        Sipeto();
        void setConfig();
        void readInput();
        void returnMedia();
        const std::string &readFromMap(const std::string &key);
        std::string processRequest(const std::string &requestBody);
        std::shared_ptr<spdlog::logger> getLogger() const { return _logger; }
        void handleRequest(http::request<http::string_body> &&req, tcp::socket &socket);

        // Define a global variable to hold the received update
        std::atomic<std::string> receivedUpdate("");

        // Define a global variable to signal when an update has been received
        std::condition_variable updateReceived;
        std::mutex updateMutex;
        bool updateAvailable = false;

        ~Sipeto() = default;

    private:
        std::string _configFile {}; 
        std::map<std::string, std::string> _config;
        static std::shared_ptr<spdlog::logger> _logger;

#ifdef UNIT_TEST
        friend class SipetoTest;
#endif
    };

} // !namespace sipeto
#endif // SIPETO_H