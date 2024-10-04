#include "WeatherSim.h"
#include <cstdlib>
#include <ctime>

WeatherSim::WeatherSim()
	: gen(rd()),
	temperatureDist(-30.0, 50.0),
	humidityDist(0.0, 100.0),
	windSpeedDist(0.0, 20.0)
{
	updateData();
}

WeatherData WeatherSim::getCurrentData() const {
	return currentData;
}

void WeatherSim::updateData() {
	currentData.temperature = temperatureDist(gen);
	currentData.humidity = humidityDist(gen);
	currentData.windSpeed = windSpeedDist(gen);
}