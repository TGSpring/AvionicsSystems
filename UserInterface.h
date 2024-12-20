#pragma once
#include <string>
#include <functional>  // For std::function
#include <unordered_map>
#include "FlightControl.h"
#include "SensorSim.h"
#include "GPSsim.h"
#include "WeatherSim.h"

class UserInterface {
public:
    // Constructor
    UserInterface();

    // Load menu configuration from some external source (e.g., a config file)
    void loadMenuConfig(const std::string& configPath);

    // Displays the menu options to the user
    void displayMenu() const;

    // Retrieve the function handler based on the function name (returns a std::function)
    std::function<void(FlightControl&, SensorSim&, GPSsim&, WeatherSim&)> getFunctionHandler(const std::string& functionName);

    // Handles user input, triggers corresponding menu actions
    void handleInput(FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather);

    // Checks if the user's menu choice is valid
    bool isValidChoice(int choice) const;

private:
    // Function to log data
    void logData(const FlightControl& fc, const SensorSim& ss, const std::string& logType) const;

    // Helper function to validate angle input
    double getValidAngle(const std::string& prompt) const;

    // Displays GPS data
    void displayGPSData(const GPSsim& gps) const;

    // Displays weather data
    void displayWeatherData(const WeatherSim& weather) const;

    // Runs machine learning analysis
    void runMLAnalysis(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather, const std::string& inputFilePath, const std::string& outputFilePath) const;

    // Exports data to a text file
    void exportDataToTxt(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const;

    // Helper function for input validation
    double getValidInput(const std::string& prompt, double min, double max) const;

    // A map to associate menu options with function handlers
    std::unordered_map<int, std::function<void(FlightControl&, SensorSim&, GPSsim&, WeatherSim&)>> menuOptions;

    // A map of menu labels for display purposes
    std::unordered_map<int, std::string> menuLabels;

    //Load default menu config
    void loadDefaultMenu();
};
