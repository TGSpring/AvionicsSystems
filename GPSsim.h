#ifndef GPSSIM_H
#define GPSSIM_H

#include <curl/curl.h>
#include <nlohmann/json.hpp> // For JSON parsing

// Define the GPSdata struct to hold GPS coordinates and altitude
struct GPSdata {
    double latitude;   // Latitude coordinate
    double longitude;  // Longitude coordinate
    double altitude;   // Altitude in meters
};

// GPSsim class declaration
class GPSsim {
public:
    GPSsim(); // Constructor to initialize CURL and API URL
    ~GPSsim(); // Destructor to clean up CURL resources

    // Method to get the most recent GPS data
    GPSdata getCurrentData() const;

    // Method to update the GPS data by fetching from the API
    void updateData();

private:
    // Method to parse the JSON response from the API
    void parseResponse(const std::string& response);

    CURL* curl;          // CURL handle for making HTTP requests
    std::string apiUrl;  // URL for the Overpass API
    GPSdata currentData; // Stores the current GPS data
};

#endif // GPSSIM_H