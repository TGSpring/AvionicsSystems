// AvionicsSystems.cpp : Defines the entry point for the application.
//

#include "AvionicsSystems.h"
#include <iostream>
#include "FlightControl.h"
#include "SensorSim.h"
#include "UserInterface.h"
#include "GPSsim.h"
#include "WeatherSim.h"

int main()
{
    FlightControl _flightControl;
    SensorSim _sensorSim;
    UserInterface ui;
    GPSsim gps;
    WeatherSim weather;

    ui.handleInput(_flightControl, _sensorSim, gps, weather);

    return 0;
}
