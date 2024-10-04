#pragma once
#include <string>
#include "FlightControl.h"
#include "SensorSim.h"
#include "GPSsim.h"
#include "WeatherSim.h"

class UserInterface {
public:
    void displayMenu() const;
    void handleInput(FlightControl& fc, SensorSim& ss, GPSsim& gps, WeatherSim& weather);
    void fetchAndDisplayGPSData();

private:
    void logData(const FlightControl& fc, const SensorSim& ss, const std::string& logType) const;
    double getValidAngle(const std::string& prompt) const;
    void displayGPSData(const GPSsim& gps) const;
    void displayWeatherData(const WeatherSim& weather) const;
    void runMLAnalysis(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather, const std::string& inputFilePath, const std::string& outputFilePath) const;
    void exportDataToTxt(const SensorSim& ss, const GPSsim& gps, const WeatherSim& weather) const;
};