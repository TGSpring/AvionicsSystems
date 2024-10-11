#include "GPSsim.h"
#include <curl/curl.h>
#include <nlohmann/json.hpp> // For JSON parsing
#include <iostream>
#include <random> // For random number generation



using json = nlohmann::json;

// Callback function to write data from the curl request
size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* userData) {
    size_t totalSize = size * nmemb;
    userData->append((char*)contents, totalSize);
    return totalSize;
}

GPSsim::GPSsim() : apiUrl("https://overpass-api.de/api/interpreter?data=[out:json];node%5B%22aeroway%22=%22aerodrome%22%5D%2838.5%2C-77.5%2C39.5%2C-76.5%29;out%20body;") {
    curl = curl_easy_init();
    if (!curl) {
        throw std::runtime_error("Failed to initialize CURL");
    }
}

GPSdata GPSsim::getCurrentData() const {
    return currentData;
}

void GPSsim::updateData() {
    if (!curl) {
        throw std::runtime_error("CURL not initialized");
    }

    CURLcode res;
    std::string response;

    curl_easy_setopt(curl, CURLOPT_URL, apiUrl.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

    res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        std::cerr << "CURL error: " << curl_easy_strerror(res) << std::endl;
        return;
    }

    std::cout << "Raw API response: " << response << std::endl;

    parseResponse(response);
}

void GPSsim::parseResponse(const std::string& response) {
    try {
        auto jsonResponse = json::parse(response);

        auto elements = jsonResponse["elements"];
        if (!elements.empty()) {
            auto firstElement = elements[0];
            currentData.latitude = firstElement["lat"].get<double>();
            currentData.longitude = firstElement["lon"].get<double>();
            currentData.altitude = firstElement.contains("tags") && firstElement["tags"].contains("ele") ?
                firstElement["tags"]["ele"].get<double>() : 0.0;
            // Debug: Print parsed GPS data
            std::cout << "Parsed GPS data - Latitude: " << currentData.latitude
                << ", Longitude: " << currentData.longitude
                << ", Altitude: " << currentData.altitude << " feet" << std::endl;
        }
        else {
            std::cerr << "No elements found in the JSON response." << std::endl;
        }
    }
    catch (const json::exception& e) {
        std::cerr << "JSON parsing error: " << e.what() << std::endl;
    }
}


GPSsim::~GPSsim() {
    if (curl) {
        curl_easy_cleanup(curl);
    }
}