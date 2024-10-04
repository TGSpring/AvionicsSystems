#include "SensorSim.h"
#include <cstdlib> // For rand()
#include <cmath> // For fmod()
#include <random> // For random number generation
#include <iostream> // For debugging (if needed)

// Custom clamp function
template <typename T>
T clamp(const T& value, const T& low, const T& high) {
    return (value < low) ? low : (value > high) ? high : value;
}

// SensorSim Constructor
SensorSim::SensorSim()
    : altitude(1000.0), airspeed(250.0), orientation(0.0),
    noise_stddev(1.0), temperature(15.0), humidity(50.0),
    gen(rd()), noise_dist(0.0, noise_stddev) {}

// Realistic Ranges for Sensors
const double MAX_ALTITUDE = 50000.0;
const double MIN_ALTITUDE = 0.0;
const double MAX_AIRSPEED = 600.0;
const double MIN_AIRSPEED = 0.0;

// Simulated Effect Coefficients
const double TEMP_EFFECT = 0.05;
const double HUMIDITY_EFFECT = 0.02;

double SensorSim::getAltitude() const {
    return altitude;
}

double SensorSim::getAirspeed() const {
    return airspeed;
}

double SensorSim::getOrientation() const {
    return orientation;
}

void SensorSim::updateSensor() {
    // Create uniform distributions for altitude and airspeed changes
    std::uniform_real_distribution<double> uniform_dist(-0.1, 0.1);

    // Update altitude with Gaussian noise and temperature effect
    double altitude_change = uniform_dist(gen) + noise_dist(gen) - TEMP_EFFECT * (temperature - 15.0);
    altitude += altitude_change;
    altitude = clamp(altitude, MIN_ALTITUDE, MAX_ALTITUDE);

    // Update airspeed with Gaussian noise and humidity effect
    double airspeed_change = uniform_dist(gen) + noise_dist(gen) - HUMIDITY_EFFECT * (humidity - 50.0);
    airspeed += airspeed_change;
    airspeed = clamp(airspeed, MIN_AIRSPEED, MAX_AIRSPEED);

    // Update orientation with Gaussian noise
    double orientation_change = uniform_dist(gen) + noise_dist(gen);
    orientation += orientation_change;
}