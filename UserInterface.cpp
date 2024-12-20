#define NOMINMAX // Prevent <Windows.h> from defining the min/max macros.
#include <Windows.h>
#include <algorithm>
#include "UserInterface.h"
#include <iostream>
#include <nlohmann/json.hpp>
#include <fstream>
#include <stdexcept>
#include <limits>
#include <filesystem>

using json = nlohmann::json;

// Constructor for UserInterface class
// Attempts to load the menu configuration from the JSON file
UserInterface::UserInterface() {
    loadMenuConfig("menu_config.json");
}

// Function to load menu configuration from a JSON file
void UserInterface::loadMenuConfig(const std::string& configFilePath) {
    // Clear existing menu options and labels
    menuOptions.clear();
    menuLabels.clear();

    // Create an absolute path for the configuration file
    std::filesystem::path configFileAbsolutePath(configFilePath);

    // Check if the configuration file exists
    if (!std::filesystem::exists(configFileAbsolutePath)) {
        std::cerr << "Configuration file does not exist: " << configFileAbsolutePath << "\n";
        loadDefaultMenu();
        return;
    }

    // Open the configuration file
    std::ifstream configFile(configFileAbsolutePath);
    if (!configFile.is_open()) {
        std::cerr << "Could not open configuration file: " << configFileAbsolutePath << "\n";
        loadDefaultMenu();
        return;
    }

    // Parse the JSON configuration
    json config;
    try {
        configFile >> config;
    }
    catch (const json::parse_error& e) {
        std::cerr << "JSON parse error: " << e.what() << "\n";
        loadDefaultMenu();
        return;
    }

    // Load menu items from the JSON configuration
    try {
        for (const auto& item : config["menuItems"]) {
            int id = item["id"];
            std::string label = item["label"];
            std::string function = item["function"];

            menuLabels[id] = label;
            menuOptions[id] = getFunctionHandler(function);
        }
    }
    catch (const std::exception& e) {
        std::cerr << "Error while parsing menu items: " << e.what() << "\n";
        loadDefaultMenu();
    }
}

// Function to load the default menu configuration
void UserInterface::loadDefaultMenu() {
    std::cerr << "Loading default menu configuration...\n";

    menuLabels.insert({
        {1, "Log Data"},
        {2, "Get Valid Angle"},
        {3, "Display GPS Data"},
        {4, "Display Weather Data"},
        {5, "Run ML Analysis"},
        {6, "Export Data to TXT"},
        {0, "Exit"}
        });

    menuOptions.insert({
        {1, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { logData(fc, ss, "log"); }},
        {2, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            double angle = getValidAngle("Enter angle: ", fc);
            std::cout << "Angle set to " << angle << " degrees.\n";
        }},
        {3, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { displayGPSData(gps); }},
        {4, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { displayWeatherData(weather); }},
        {5, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { runMLAnalysis(ss, gps, weather, "input.csv", "output.csv"); }},
        {6, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { exportDataToTxt(ss, gps, weather); }},
        {0, [](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { std::cout << "Exiting...\n"; }}
        });
}

// Function to get the appropriate function handler based on the function name
std::function<void(FlightControl&, SensorSim&, GPSsim&, WeatherSim&)>
UserInterface::getFunctionHandler(const std::string& functionName) {
    if (functionName == "logData") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            logData(fc, ss, "log");
            };
    }
    else if (functionName == "getValidAngle") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            double angle = getValidAngle("Enter angle: ", fc);
            std::cout << "Angle set to " << angle << " degrees.\n";
            };
    }
    else if (functionName == "displayGPSData") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            displayGPSData(gps);
            };
    }
    else if (functionName == "displayWeatherData") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            displayWeatherData(weather);
            };
    }
    else if (functionName == "runMLAnalysis") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            runMLAnalysis(ss, gps, weather, "input.csv", "output.csv");
            };
    }
    else if (functionName == "exportDataToTxt") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            exportDataToTxt(ss, gps, weather);
            };
    }
    else if (functionName == "displaySystemStatus") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            displaySystemStatus(fc, ss, gps, weather);
            };
    }
    else if (functionName == "exit") {
        return [](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            };
    }
    else {
        throw std::invalid_argument("Unknown function: " + functionName);
    }
}

// Function to display the menu
void UserInterface::displayMenu() const {
    std::cout << "Welcome to the Avionics System Menu:\n";
    for (const auto& [id, label] : menuLabels) {
        std::cout << id << ". " << label << "\n";
    }
}

// Function to check if the user's choice is valid
bool UserInterface::isValidChoice(int choice) const {
    return menuOptions.find(choice) != menuOptions.end();
}

// Function to handle user input
void UserInterface::handleInput(FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
    int choice;
    while (true) {
        displayMenu();
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        if (std::cin.fail()) {
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            std::cout << "Invalid input. Please enter a number.\n";
            continue;
        }

        if (isValidChoice(choice)) {
            menuOptions[choice](fc, ss, gps, weather);
            if (choice == 0) {
                std::cout << "Exiting...\n";
                break;
            }
        }
        else {
            std::cout << "Invalid choice. Please try again.\n";
        }
    }
}

// Function to get a valid input from the user within a specified range
double UserInterface::getValidInput(const std::string& prompt, double min, double max) const {
    double value;
    while (true) {
        std::cout << prompt << " (Range: " << min << " to " << max << "): ";
        std::cin >> value;

        if (std::cin.fail() || value < min || value > max) {
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            std::cout << "Input invalid. Please enter a value within the given range.\n";
        }
        else {
            return value;
        }
    }
}

// Function to get a valid angle from the user
double UserInterface::getValidAngle(const std::string& prompt, const FlightControl& fc) const {
    double angle;
    std::cout << prompt;
    std::cin >> angle;

    while (std::cin.fail() || !fc.validateAngle(angle)) {
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        std::cout << "Invalid angle. Please enter an angle between -360 and 360: ";
        std::cin >> angle;
    }
    return angle;
}

// Function to log data
void UserInterface::logData(const FlightControl& fc, const SensorSim& ss, const std::string& logType) const {
    fc.logData(logType);
}

// Function to display GPS data
void UserInterface::displayGPSData(const GPSsim& gps) const {
    std::cout << "Displaying GPS data...\n";
}

// Function to display weather data
void UserInterface::displayWeatherData(const WeatherSim& weather) const {
    std::cout << "Displaying Weather data...\n";
}

// Function to run machine learning analysis
void UserInterface::runMLAnalysis(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather, const std::string& inputFilePath, const std::string& outputFilePath) const {
    std::cout << "Running Machine Learning Analysis...\n";
}

// Function to export data to a text file
void UserInterface::exportDataToTxt(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const {
    std::cout << "Exporting data to text file...\n";
}

// Function to display system status
void UserInterface::displaySystemStatus(const FlightControl& fc, const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const {
    std::cout << "Displaying system status...\n";
    // Add logic to display the system status here
}