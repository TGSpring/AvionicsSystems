cmake_minimum_required(VERSION 3.10)

project(AvionicsSystems)

find_package(fmt CONFIG REQUIRED)
find_package(CURL REQUIRED)

add_executable(AvionicsSystems AvionicsSystems.cpp "UserInterface.h" "UserInterface.cpp" "FlightControl.cpp" "FlightControl.h" "GPSdata.h" "GPSsim.cpp" "GPSsim.h" "SensorSim.cpp" "SensorSim.h" "WeatherData.h" "WeatherSim.cpp" "WeatherSim.h")

target_link_libraries(AvionicsSystems PRIVATE fmt::fmt)
target_link_libraries(AvionicsSystems PRIVATE CURL::libcurl)