#include "FlightControl.h"
#include <iostream>
#include <fstream>

// Constructor for FlightControl class
// Initializes pitch, roll, and yaw angles to 0.0
FlightControl::FlightControl() : pitchAngle(0.0), rollAngle(0.0), yawAngle(0.0) {}

// Adjusts the pitch angle by the specified amount
// Validates the new angle before making the adjustment
void FlightControl::adjustPitch(double angle) {
    if (validateAngle(pitchAngle + angle)) {
        pitchAngle += angle;
    }
}

// Adjusts the roll angle by the specified amount
// Validates the new angle before making the adjustment
void FlightControl::adjustRoll(double angle) {
    if (validateAngle(rollAngle + angle)) {
        rollAngle += angle;
    }
}

// Adjusts the yaw angle by the specified amount
// Validates the new angle before making the adjustment
void FlightControl::adjustYaw(double angle) {
    if (validateAngle(yawAngle + angle)) {
        yawAngle += angle;
    }
}

// Returns the current pitch angle
double FlightControl::getPitchAngle() const {
    return pitchAngle;
}

// Returns the current roll angle
double FlightControl::getRollAngle() const {
    return rollAngle;
}

// Returns the current yaw angle
double FlightControl::getYawAngle() const {
    return yawAngle;
}

// Sets the pitch angle to the specified value
// Validates the new angle before making the change
void FlightControl::setPitchAngle(double angle) {
    if (validateAngle(angle)) {
        pitchAngle = angle;
    }
}

// Sets the roll angle to the specified value
// Validates the new angle before making the change
void FlightControl::setRollAngle(double angle) {
    if (validateAngle(angle)) {
        rollAngle = angle;
    }
}

// Sets the yaw angle to the specified value
// Validates the new angle before making the change
void FlightControl::setYawAngle(double angle) {
    if (validateAngle(angle)) {
        yawAngle = angle;
    }
}

// Logs the current pitch, roll, and yaw angles to a log file
// Appends the data to "flight_control_log.txt" with the specified log type
void FlightControl::logData(const std::string& logType) const {
    std::ofstream logFile("flight_control_log.txt", std::ios::app);
    if (logFile.is_open()) {
        logFile << logType << ": Pitch=" << pitchAngle << ", Roll=" << rollAngle << ", Yaw=" << yawAngle << "\n";
        logFile.close();
    }
    else {
        std::cerr << "Unable to open log file\n";
    }
}

// Validates that the specified angle is within the acceptable range (-360 to 360 degrees)
bool FlightControl::validateAngle(double angle) const {
    return angle >= -360.0 && angle <= 360.0;
}