cmake_minimum_required(VERSION 3.10.2)

project(AvionicsSystems)

# Set C++ standard to 17 for the whole project
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Find required packages
find_package(fmt CONFIG REQUIRED)
find_package(CURL REQUIRED)
find_package(nlohmann_json CONFIG REQUIRED) # For JSON handling
find_package(ZLIB REQUIRED) # Find zlib

# Add the executable
add_executable(AvionicsSystems
    AvionicsSystems.cpp
    UserInterface.cpp
    FlightControl.cpp
    GPSsim.cpp
    SensorSim.cpp
    WeatherSim.cpp
    "ASHash.h" "ASHash.cpp"
)

# Link libraries
target_link_libraries(AvionicsSystems PRIVATE
    fmt::fmt
    CURL::libcurl
    nlohmann_json::nlohmann_json
    ZLIB::ZLIB
)
