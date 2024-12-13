#pragma once
#include "ASHash.h"
#include <random> // For random number generation

class SensorSim {
public:
    SensorSim();

    //Accessor methods for ranges.
    static double getMaxAltitude();
    static double getMinAltitude();
    static double getMaxAirspeed();
    static double getMinAirspeed();


    double getAltitude() const;
    double getAirspeed() const;
    double getOrientation() const;


    void updateSensor();
    void logSensorData(ASHash& hashTable) const;

private:
    double altitude;
    double airspeed;
    double orientation;
    double noise_stddev;
    double temperature;
    double humidity;

    // Random number generation components
    std::random_device rd;
    std::default_random_engine gen;
    std::normal_distribution<double> noise_dist;
};