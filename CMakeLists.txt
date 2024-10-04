cmake_minimum_required(VERSION 3.10.2)

project(AvionicsSystems)

# Find required packages
find_package(fmt CONFIG REQUIRED)
find_package(CURL REQUIRED)
find_package(nlohmann_json CONFIG REQUIRED) # For JSON handling
find_package(ZLIB REQUIRED) # Find zlib
find_package(mongoc-1.0 CONFIG REQUIRED)
 find_package(mongocxx CONFIG REQUIRED)


# Add the executable
add_executable(AvionicsSystems
    AvionicsSystems.cpp
    UserInterface.cpp
    FlightControl.cpp
    GPSsim.cpp
    SensorSim.cpp
    WeatherSim.cpp
)

# Link libraries
target_link_libraries(AvionicsSystems PRIVATE
    fmt::fmt
    CURL::libcurl
    nlohmann_json::nlohmann_json
    ZLIB::ZLIB
    mongo::mongoc_shared
    mongo::mongocxx_shared
)
