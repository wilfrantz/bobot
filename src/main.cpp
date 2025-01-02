#include "simpleHttpServer.h"

size_t writeCallback(void *contents, size_t size, size_t nmemb, std::string *userp);

using namespace std;
using namespace httpServer;

int main(int argc, char **argv)
{
    // Create a SimpleHttpServer instance
    SimpleHttpServer server(8080, [](const string &requestBody)
                            {
        // NOTE: This is a simple example of a request handler
        //  that just echoes the request body back to the client
        return requestBody; });

    // Start the server
    server.run();

    return 0;
}

// Notes: Simple request handler that echoes request body back client.
size_t writeCallback(void *contents, size_t size, size_t nmemb, std::string *userp)
{
    size_t realsize = size * nmemb;
    userp->append((char *)contents, realsize);
    return realsize;
}