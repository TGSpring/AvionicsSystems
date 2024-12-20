#pragma once

#include <string> // Include string for std::string

// The FlightControl class manages the pitch, roll, and yaw angles of an aircraft
class FlightControl {
public:
    // Constructor: Initializes the pitch, roll, and yaw angles to 0.0
    FlightControl();

    // Adjusts the pitch angle by the specified amount
    void adjustPitch(double angle);

    // Adjusts the roll angle by the specified amount
    void adjustRoll(double roll);

    // Adjusts the yaw angle by the specified amount
    void adjustYaw(double angle);

    // Returns the current pitch angle
    double getPitchAngle() const;

    // Returns the current roll angle
    double getRollAngle() const;

    // Returns the current yaw angle
    double getYawAngle() const;

    // Sets the pitch angle to the specified value
    void setPitchAngle(double angle);

    // Sets the roll angle to the specified value
    void setRollAngle(double angle);

    // Sets the yaw angle to the specified value
    void setYawAngle(double angle);

    // Logs the current pitch, roll, and yaw angles to a log file
    void logData(const std::string& logType) const;

    // Validates that the specified angle is within the acceptable range (-360 to 360 degrees)
    bool validateAngle(double angle) const; // Make validateAngle public

private:
    // Stores the current pitch angle
    double pitchAngle;

    // Stores the current roll angle
    double rollAngle;

    // Stores the current yaw angle
    double yawAngle;
};