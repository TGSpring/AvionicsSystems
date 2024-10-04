#pragma once
#include "WeatherData.h"
#include <random>

class WeatherSim {
public:
	WeatherSim();
	WeatherData getCurrentData() const;
	void updateData();

	WeatherSim(const WeatherSim&) = delete;
	WeatherSim& operator=(const WeatherSim&) = delete;

	WeatherSim(WeatherSim&&) noexcept = default;
	WeatherSim& operator=(WeatherSim&&) noexcept = default;

private:
	WeatherData currentData;
	std::random_device rd;
	std::mt19937 gen;
	std::uniform_real_distribution<> temperatureDist;
	std::uniform_real_distribution<> humidityDist;
	std::uniform_real_distribution<> windSpeedDist;
};