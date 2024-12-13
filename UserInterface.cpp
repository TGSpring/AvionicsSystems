#define NOMINMAX // Prevent <Windows.h> from defining the min/max macros.
#include <Windows.h>
#include <algorithm>
#include "UserInterface.h"
#include <iostream>

// Display the main menu to the user
void UserInterface::displayMenu() const {
    std::cout << "Welcome to the Avionics System Menu:\n";
    std::cout << "1. Log Data\n";
    std::cout << "2. Get Valid Angle\n";
    std::cout << "3. Display GPS Data\n";
    std::cout << "4. Display Weather Data\n";
    std::cout << "5. Run ML Analysis\n";
    std::cout << "6. Export Data to Text\n";
    std::cout << "0. Exit\n";
}

// Handle the user input and call appropriate functions for each menu option
void UserInterface::handleInput(FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
    // Populate the menu options map with the corresponding function handlers
    menuOptions = {
        {1, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { logData(fc, ss, "log"); }},
        {2, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            // Get valid altitude input from user
            double altitude = getValidInput("Enter Altitude: ", SensorSim::getMinAltitude(), SensorSim::getMaxAltitude());
            std::cout << "Altitude set to " << altitude << " meters.\n";
        }},
        {3, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
            // Get valid airspeed input from user
            double airspeed = getValidInput("Enter Airspeed: ", SensorSim::getMinAirspeed(), SensorSim::getMaxAirspeed());
            std::cout << "Airspeed set to: " << airspeed << " knots.\n";
        }},
        {4, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { displayWeatherData(weather); }},
        {5, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { runMLAnalysis(ss, gps, weather, "input.csv", "output.csv"); }},
        {6, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { exportDataToTxt(ss, gps, weather); }},
        {0, [](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { std::cout << "Exiting...\n"; }}
    };

    // Handle user input in a loop until they choose to exit
    int choice;
    do {
        displayMenu();  // Show menu options
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        // Check if the user input is valid
        if (menuOptions.find(choice) != menuOptions.end()) {
            menuOptions[choice](fc, ss, gps, weather);  // Call the corresponding function
        }
        else {
            std::cout << "Invalid choice. Please try again.\n";
        }
    } while (choice != 0);  // Exit the loop when the user chooses 0
}

// Helper function to validate user input within a range
double UserInterface::getValidInput(const std::string& prompt, double min, double max) const {
    double value;
    while (true) {
        std::cout << prompt << "(Range: " << min << " to " << max << "): ";
        std::cin >> value;

        // Validate input range
        if (std::cin.fail() || value < min || value > max) {
            std::cin.clear(); // Clear input error state
            std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
            std::cout << "Input invalid. Please enter a value within the given range.\n";
        }
        else {
            return value;
        }
    }
}

// Functions corresponding to each menu option

// Logs sensor data using the provided sensor simulator
void UserInterface::logData(const FlightControl& fc, const SensorSim& ss, const std::string& logType) const {
    static ASHash sensorData; // Persistent across function calls
    ss.logSensorData(sensorData); // Logs data into the hash table
    std::cout << "Sensor data logged successfully.";
    std::cout << "Current data:\n";
    sensorData.display(); // Optional: Display logged data
}

// Returns a valid angle input from the user
double UserInterface::getValidAngle(const std::string& prompt) const {
    double angle;
    std::cout << prompt;
    std::cin >> angle;
    return angle;
}

// Displays the GPS data (this will need further implementation)
void UserInterface::displayGPSData(const GPSsim& gps) const {
    std::cout << "Displaying GPS data...\n";
    // Implementation to display GPS data...
}

// Displays the weather data (this will need further implementation)
void UserInterface::displayWeatherData(const WeatherSim& weather) const {
    std::cout << "Displaying Weather data...\n";
    // Implementation to display weather data...
}

// Run the machine learning analysis (this will need further implementation)
void UserInterface::runMLAnalysis(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather, const std::string& inputFilePath, const std::string& outputFilePath) const {
    std::cout << "Running Machine Learning Analysis...\n";
    // Implementation for ML analysis...
}

// Exports the data to a text file (this will need further implementation)
void UserInterface::exportDataToTxt(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const {
    std::cout << "Exporting data to text file...\n";
    // Implementation for exporting data to text...
}
