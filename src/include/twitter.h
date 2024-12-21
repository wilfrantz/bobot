#ifndef TWITTER_H
#define TWITTER_H

/**
 * @file twitter.h
 * @brief This file contains the declaration of the Twitter class.
 * NOTE: Security: Use encrypted communication such as HTTPS to protect
 * sensitive information such as bearer tokens. You can also store bearer
 * tokens in an encrypted file or environment variable instead of passing
 * them as plain text strings.
 */

/// NOTE: https://developer.twitter.com/en/docs/twitter-ads-api/creatives/guides/identifying-media

#include "sipeto.h"
#include "media_downloader.h"

using namespace sipeto;
using namespace mediaDownloader;

namespace twitter
{

    class Twitter final : mediaDownloader::MediaDownloader
    {
    public:
        Twitter(const std::string &mediaUrl, Sipeto &sipeto);

        void getMediaAttributes(const std::string &url) override;
        std::string performHttpGetRequest(const std::string &url,
                                          const std::string &bearerToken);

        ReturnCode downloadMedia() override;

        ~Twitter();

    private:
        Sipeto &_sipeto;
        // std::string _bearerToken{"token"};
        const std::string &_mediaId{"id"};
        const std::string &_outputFilePath{"path"};
        std::map<std::string, std::string> _attributes;
        static std::shared_ptr<spdlog::logger> _logger;
        inline std::map<std::string, std::string> &getTheMap() override { return _configMap; }

        std::string API_URL = "URL";
        std::string MEDIA_URL = "don't change this.";

        static size_t writeCallback(char *ptr,
                                    size_t size,
                                    size_t nmemb,
                                    std::string *data);

        /// TODO: to load array related to each social media from config file.
        std::map<std::string, std::string> _configMap;

        /** 
         * NOTE: There are four possible category values: 
         * AMPLIFY_VIDEO, TWEET_GIF, TWEET_IMAGE, and TWEET_VIDEO.
        **/

#ifdef twitterTest
        friend class twitterTest;
#endif // !twitterTest
    };
} // !namespace twitter

#endif // !TWITTER_H