#include "SensorSim.h"
#include "ASHash.h"
#include "GPSsim.h"
#include <iostream>
#include <nlohmann/json.hpp> // Include the JSON library
#include <curl/curl.h> // Include the cURL library

using json = nlohmann::json;

// Function to handle cURL response data
static size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::string* s) {
    size_t newLength = size * nmemb;
    s->append((char*)contents, newLength);
    return newLength;
}

int main() {
    SensorSim sensorSim;
    GPSsim gpsSim;
    ASHash hashTable;

    // Update sensor data and log it
    sensorSim.updateSensor();
    gpsSim.updateData();

    // Initialize cURL
    CURL* curl;
    CURLcode res;
    std::string readBuffer;

    curl = curl_easy_init();
    if (curl) {
        // Example API request with a limit to one node
        std::string url = "http://overpass-api.de/api/interpreter?data=[out:json][timeout:25];node[\"aeroway\"=\"aerodrome\"][\"addr:state\"=\"MD\"];out 1;";

        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);

        // Perform the request
        res = curl_easy_perform(curl);

        // Check for errors
        if (res != CURLE_OK) {
            fprintf(stderr, "curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
        }
        else {
            std::cout << "Raw API response: " << readBuffer << std::endl;

            try {
                // Parse the JSON response
                auto json_response = json::parse(readBuffer);

                // Extract latitude and longitude with type checking
                double latitude = 0.0;
                double longitude = 0.0;

                if (json_response.contains("elements") && json_response["elements"].size() > 0) {
                    auto element = json_response["elements"][0];
                    if (element.contains("lat") && element["lat"].is_number()) {
                        latitude = element["lat"].get<double>();
                    }
                    else if (element.contains("lat") && element["lat"].is_string()) {
                        latitude = std::stod(element["lat"].get<std::string>());
                    }

                    if (element.contains("lon") && element["lon"].is_number()) {
                        longitude = element["lon"].get<double>();
                    }
                    else if (element.contains("lon") && element["lon"].is_string()) {
                        longitude = std::stod(element["lon"].get<std::string>());
                    }

                    // Log the extracted values
                    hashTable.insert("Latitude", latitude);
                    hashTable.insert("Longitude", longitude);
                }
                else {
                    std::cerr << "No elements found in the API response." << std::endl;
                }
            }
            catch (const json::exception& e) {
                std::cerr << "JSON parsing error: " << e.what() << std::endl;
            }
        }

        // Clean up cURL
        curl_easy_cleanup(curl);
    }

    // Log sensor data
    sensorSim.logSensorData(hashTable, gpsSim);

    // Display logged data
    hashTable.display();

    return 0;
}