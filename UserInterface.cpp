#include "UserInterface.h"
#include <iostream>

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

void UserInterface::handleInput(FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) {
    // Populate the menu options map with the corresponding function handlers
    menuOptions = {
        {1, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { logData(fc, ss, "log"); }},
        {2, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { getValidAngle("Enter angle: "); }},
        {3, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { displayGPSData(gps); }},
        {4, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { displayWeatherData(weather); }},
        {5, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { runMLAnalysis(ss, gps, weather, "input.csv", "output.csv"); }},
        {6, [this](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { exportDataToTxt(ss, gps, weather); }},
        {0, [](FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather) { std::cout << "Exiting...\n"; }}
    };

    // Handle user input
    int choice;
    do {
        displayMenu();
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

// Functions corresponding to each menu option

void UserInterface::logData(const FlightControl& fc, const SensorSim& ss, const std::string& logType) const {
    static ASHash sensorData; //Persistent across function calls.
    ss.logSensorData(sensorData);
    std::cout << "Sensor data logged successfully.";
    std::cout << "Current data:\n";
    sensorData.display(); //Optional.
   
}

double UserInterface::getValidAngle(const std::string& prompt) const {
    double angle;
    std::cout << prompt;
    std::cin >> angle;
    return angle;
}

void UserInterface::displayGPSData(const GPSsim& gps) const {
    std::cout << "Displaying GPS data...\n";
    // Implementation to display GPS data...
}

void UserInterface::displayWeatherData(const WeatherSim& weather) const {
    std::cout << "Displaying Weather data...\n";
    // Implementation to display weather data...
}

void UserInterface::runMLAnalysis(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather, const std::string& inputFilePath, const std::string& outputFilePath) const {
    std::cout << "Running Machine Learning Analysis...\n";
    // Implementation for ML analysis...
}

void UserInterface::exportDataToTxt(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const {
    std::cout << "Exporting data to text file...\n";
    // Implementation for exporting data to text...
}
