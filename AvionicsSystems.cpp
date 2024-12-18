// AvionicsSystems.cpp : Defines the entry point for the application.
//

#include "AvionicsSystems.h"
#include <iostream>
#include "FlightControl.h"
#include "SensorSim.h"
#include "UserInterface.h"
#include "GPSsim.h"
#include "WeatherSim.h"

int main() {
    try {
        UserInterface ui;
        FlightControl fc;
        SensorSim ss;
        GPSsim gps;
        WeatherSim weather;

        // Load menu configuration
        ui.loadMenuConfig("menu_config.json");

        // Start handling user input
        ui.handleInput(fc, ss, gps, weather);
    }
    catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    return 0;
}