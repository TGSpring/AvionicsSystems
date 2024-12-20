#pragma once

#include <string>
#include <functional>  // For std::function
#include <unordered_map>
#include "FlightControl.h"
#include "SensorSim.h"
#include "GPSsim.h"
#include "WeatherSim.h"

// The UserInterface class manages the user interaction with the avionics system
class UserInterface {
public:
    // Constructor: Initializes the user interface and loads the menu configuration
    UserInterface();

    // Loads the menu configuration from a JSON file specified by configPath
    void loadMenuConfig(const std::string& configPath);

    // Displays the menu options to the user
    void displayMenu() const;

    // Returns a function handler based on the function name provided
    std::function<void(FlightControl&, SensorSim&, GPSsim&, WeatherSim&)> getFunctionHandler(const std::string& functionName);

    // Handles user input and executes the corresponding menu option
    void handleInput(FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather);

    // Checks if the user's menu choice is valid
    bool isValidChoice(int choice) const;

private:
    // Logs data based on the provided logType
    void logData(const FlightControl& fc, const SensorSim& ss, const std::string& logType) const;

    // Prompts the user to enter a valid angle and validates it using the FlightControl class
    double getValidAngle(const std::string& prompt, const FlightControl& fc) const;

    // Displays GPS data
    void displayGPSData(const GPSsim& gps) const;

    // Displays weather data
    void displayWeatherData(const WeatherSim& weather) const;

    // Runs machine learning analysis on the sensor, GPS, and weather data, and saves the results to CSV files
    void runMLAnalysis(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather, const std::string& inputFilePath, const std::string& outputFilePath) const;

    // Exports sensor, GPS, and weather data to a text file
    void exportDataToTxt(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const;

    // Displays the system status, including pitch, roll, and yaw angles, as well as sensor, GPS, and weather data
    void displaySystemStatus(const FlightControl& fc, const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const;

    // Prompts the user to enter a valid input within the specified range and validates it
    double getValidInput(const std::string& prompt, double min, double max) const;

    // Loads the default menu configuration if the JSON configuration file is not found or cannot be loaded
    void loadDefaultMenu();

    // Stores menu options as a mapping of menu IDs to their corresponding function handlers
    std::unordered_map<int, std::function<void(FlightControl&, SensorSim&, GPSsim&, WeatherSim&)>> menuOptions;

    // Stores menu labels as a mapping of menu IDs to their corresponding labels
    std::unordered_map<int, std::string> menuLabels;
};