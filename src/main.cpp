#include "sipeto.h"
#include "tiktok.h"
#include "twitter.h"
#include "instagram.h"
#include <curl/curl.h>

size_t writeCallback(void *contents, size_t size, size_t nmemb, std::string *userp);

using namespace std;
using namespace sipeto;
using namespace tiktok;
using namespace twitter;
using namespace instagram;
using namespace boost::asio;
using namespace simpleHttpServer;

int main(int argc, char **argv)
{
    /// NOTES: Delete this after MVP.
    std::string mediaUrl {argc == 2 ? argv[1] : ""};
    if (!mediaUrl.empty())
        CliHandler(mediaUrl);
    else
    {
        std::cout << "Please provide a media URL." << std::endl;
        std::cout << "Usage: ./main <media_url>" << std::endl;
        return 1;
    }

    Sipeto sipeto;

    // load configuration map.
    sipeto.loadConfig();

    /// NOTE: set log level (debug, info, warn, error, critical, or off)
    sipeto.setLogLevel(sipeto.getFromConfigMap("mode"));
    sipeto.displayInfo();

    TikTok tiktok;
    tiktok.displayMap(tiktok.getTheMap());
    exit(0);

    boost::asio::io_context ioc{1};
    auto address = ip::make_address(sipeto.getFromConfigMap("address"));
    auto port = static_cast<unsigned short>(std::atoi(sipeto.getFromConfigMap("port").c_str()));
    tcp::endpoint endpoint{address, port};

    SimpleHttpServer server(ioc, endpoint, sipeto);

    // Start the http server
    server.start();

    return 0;
}

// TODO: delete this after MVP.
int CliHandler(std::string &mediaUrl)
{
    const std::string bearerToken = "token";
    std::cout << "Downloading media from: " << mediaUrl << std::endl;
    curl_global_init(CURL_GLOBAL_DEFAULT);
    CURL *curl = curl_easy_init();

    if (!curl)
    {
        throw std::runtime_error("Failed to initialize curl");
    }

    std::cout << "Performing HTTP GET request to: " << mediaUrl << std::endl;

    std::string response;

    // Set up the curl session options
    struct curl_slist *headers = NULL;
    headers = curl_slist_append(headers, ("Authorization: Bearer " + bearerToken).c_str());
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
    curl_easy_setopt(curl, CURLOPT_URL, mediaUrl.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

    // Perform the HTTP GET request
    CURLcode res = curl_easy_perform(curl);
    if (res != CURLE_OK)
    {
        throw std::runtime_error("Failed to perform curl request: " + std::string(curl_easy_strerror(res)));
    }

    // Cleanup and return the HTTP response
    curl_easy_cleanup(curl);
    curl_slist_free_all(headers);
    curl_global_cleanup();

    std::cout << "----------------------------------------" << std::endl;
    std::cout << "HTTP GET request completed. Response: " << response << std::endl  ;
    std::cout << "----------------------------------------" << std::endl;
    return 0;
}