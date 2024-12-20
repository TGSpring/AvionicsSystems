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

//Load the menu configuration from a JSON file
void UserInterface::loadMenuConfig(const std::string& configFilePath) {
    //Clear existing menu options
    menuOptions.clear();
    menuLabels.clear();

    // Attempt to get the absolute path of the config file
    std::filesystem::path configFileAbsolutePath(configFilePath);

    // Check if the file exists before opening it
    if (!std::filesystem::exists(configFileAbsolutePath)) {
        throw std::runtime_error("Configuration file does not exist: " + configFilePath);
        loadDefaultMenu();
        return;
    }

    // Open the config file
    std::ifstream configFile(configFileAbsolutePath);
    if (!configFile.is_open()) {
        throw std::runtime_error("Could not open configuration file: " + configFilePath);
        loadDefaultMenu();
        return;
    }

    json config;
    try {
        configFile >> config;
    }
    catch (const json::parse_error& e) {
        std::cerr << "JSON parse error: " << e.what() << "\n";
        loadDefaultMenu();
        return;
    }

    // Parse menu items
    try {
        for (const auto& item : config["menuItems"]) {
            int id = item["id"];
            std::string label = item["label"];
            std::string function = item["function"];

            menuLabels[id] = label;
            menuOptions[id] = getFunctionHandler(function); // Map function name to handler
        }
    }
    catch (const std::exception& e) {
        std::cerr << "Error while parsing the menu items: " << e.what() << "\n";
        loadDefaultMenu();
    }
}

//Load a default menu configuration in case the JSON file is missing or invalid
void UserInterface::loadDefaultMenu() {
    std::cerr << "Loading default menu configuration... \n";
    menuLabels.insert({
        {1, "Log Data"},
        {2, "Get Valid Angle"},
        {3, "Display GPS Data"},
        {4, "Display Weather Data"},
        {5, "Run ML Analysis"},
        {6, "Export Data to TXT"},
        {0, "Exit"}
    });

    // Insert default menu options with lambda functions
    menuOptions.insert({
        {1, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { logData(fc, ss, "log"); }},
        {2, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            double angle = getValidAngle("Enter angle: ");
            std::cout << "Angle set to " << angle << " degrees.\n";
        }},
        {3, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { displayGPSData(gps); }},
        {4, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { displayWeatherData(weather); }},
        {5, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { runMLAnalysis(ss, gps, weather, "input.csv", "output.csv"); }},
        {6, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { exportDataToTxt(ss, gps, weather); }},
        {0, [](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { std::cout << "Exiting...\n"; }}
        });
}


std::function<void(FlightControl&, SensorSim&, GPSsim&, WeatherSim&)>
UserInterface::getFunctionHandler(const std::string& functionName) {
    if (functionName == "logData") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            logData(fc, ss, "log");
            };
    }
    else if (functionName == "getValidAngle") {
        return [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            double angle = getValidAngle("Enter angle: ");
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
    else if (functionName == "exit") {
        return [](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            };
    }
    else {
        throw std::invalid_argument("Unknown function: " + functionName);
    }
}

void UserInterface::displayMenu() const {
    std::cout << "Welcome to the Avionics System Menu:\n";
    for (const auto& [id, label] : menuLabels) {
        std::cout << id << ". " << label << "\n";
    }
}

bool UserInterface::isValidChoice(int choice) const {
    return menuOptions.find(choice) != menuOptions.end();
}

UserInterface::UserInterface() {
    // Initialize with default options if no JSON configuration is loaded
    menuOptions = {
        {1, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { logData(fc, ss, "log"); }},
        {2, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            double altitude = getValidInput("Enter Altitude: ", SensorSim::getMinAltitude(), SensorSim::getMaxAltitude());
            std::cout << "Altitude set to " << altitude << " meters.\n";
        }},
        {3, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            double airspeed = getValidInput("Enter Airspeed: ", SensorSim::getMinAirspeed(), SensorSim::getMaxAirspeed());
            std::cout << "Airspeed set to: " << airspeed << " knots.\n";
        }},
        {4, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { displayWeatherData(weather); }},
        {5, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { runMLAnalysis(ss, gps, weather, "input.csv", "output.csv"); }},
        {6, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { exportDataToTxt(ss, gps, weather); }},
        {0, [](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { std::cout << "Exiting...\n"; }}
    };
}

void UserInterface::handleInput(FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
    int choice;
    while (true) {
        displayMenu();
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        if (std::cin.fail()) {
            //Clear the error flag on cin.
            std::cin.clear();
            std::cin.ignore(std::numeric_limits<std::streamsize > ::max(), '\n');
            std::cout << "Invalid input. Please enter a number.\n";
            continue;
        }

        if (isValidChoice(choice)) {
            menuOptions[choice](fc, ss, gps, weather);
            if (choice == 0) {
                //Exit the loop if the choice is 0 (for exiting)
                std::cout << "Exiting...\n";
                break;
            }
        }
        else {
            std::cout << "Invalid choice. Please try again.\n";
        }
    }
}
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

double UserInterface::getValidAngle(const std::string& prompt) const {
    double angle;
    std::cout << prompt;
    std::cin >> angle;

    while (std::cin.fail() || angle < 0 || angle > 360) {
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        std::cout << "Invalid angle. Please enter an angle between 0 and 360: ";
        std::cin >> angle;
    }
    return angle;
}

void UserInterface::logData(const FlightControl& fc, const SensorSim& ss, const std::string& logType) const {
    std::cout << "Logging data (" << logType << ")...\n";
}

void UserInterface::displayGPSData(const GPSsim& gps) const {
    std::cout << "Displaying GPS data...\n";
}

void UserInterface::displayWeatherData(const WeatherSim& weather) const {
    std::cout << "Displaying Weather data...\n";
}

void UserInterface::runMLAnalysis(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather, const std::string& inputFilePath, const std::string& outputFilePath) const {
    std::cout << "Running Machine Learning Analysis...\n";
}

void UserInterface::exportDataToTxt(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const {
    std::cout << "Exporting data to text file...\n";
}
