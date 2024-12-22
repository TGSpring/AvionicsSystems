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

# Main application sources
set(SOURCES
    AvionicsSystems.cpp
    UserInterface.cpp
    FlightControl.cpp
    GPSsim.cpp
    SensorSim.cpp
    WeatherSim.cpp
    ASHash.cpp
)

# Add the main executable
add_executable(AvionicsSystems ${SOURCES})

# Include directories for the main application
target_include_directories(AvionicsSystems PRIVATE ${CMAKE_SOURCE_DIR})

# Link libraries to the main executable
target_link_libraries(AvionicsSystems PRIVATE
    fmt::fmt
    CURL::libcurl
    nlohmann_json::nlohmann_json
    ZLIB::ZLIB
)

# Test sources
set(TEST_SOURCES
    tests/TEST_ASHash.cpp
    tests/TEST_SensorSim.cpp
)

# Add test executable for TEST_ASHash
add_executable(TEST_ASHash tests/TEST_ASHash.cpp ASHash.cpp)

# Include directories for TEST_ASHash
target_include_directories(TEST_ASHash PRIVATE ${CMAKE_SOURCE_DIR})

# Link libraries to the TEST_ASHash executable
target_link_libraries(TEST_ASHash PRIVATE
    fmt::fmt
    CURL::libcurl
    nlohmann_json::nlohmann_json
    ZLIB::ZLIB
)

# Add test executable for TEST_SensorSim
add_executable(TEST_SensorSim tests/TEST_SensorSim.cpp SensorSim.cpp GPSsim.cpp ASHash.cpp)

# Include directories for TEST_SensorSim
target_include_directories(TEST_SensorSim PRIVATE ${CMAKE_SOURCE_DIR})

# Link libraries to the TEST_SensorSim executable
target_link_libraries(TEST_SensorSim PRIVATE
    fmt::fmt
    CURL::libcurl
    nlohmann_json::nlohmann_json
    ZLIB::ZLIB
)