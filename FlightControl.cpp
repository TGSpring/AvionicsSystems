#include "FlightControl.h"

FlightControl::FlightControl() : pitchAngle(0.0), rollAngle(0.0), yawAngle(0.0) {}

void FlightControl::adjustPitch(double angle) {
	pitchAngle += angle;
}

void FlightControl::adjustRoll(double angle) {
	rollAngle += angle;
}

void FlightControl::adjustYaw(double angle) {
	yawAngle += angle;
}

double FlightControl::getPitchAngle() const {
	return pitchAngle;
}

double FlightControl::getRollAngle() const {
	return rollAngle;
}

double FlightControl::getYawAngle() const {
	return yawAngle;
}