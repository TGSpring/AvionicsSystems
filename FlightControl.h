#pragma once

class FlightControl {
public:
	FlightControl();

	void adjustPitch(double angle);
	void adjustRoll(double roll);
	void adjustYaw(double angle);

	double getPitchAngle() const;
	double getRollAngle() const;
	double getYawAngle() const;

private:
	double pitchAngle;
	double rollAngle;
	double yawAngle;
};