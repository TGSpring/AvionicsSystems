# Avionics Systems Simulation with Machine Learning and Real-Time Data Integration

## Project Overview

The **Avionics Systems Simulation** is an advanced aircraft sensor simulation program designed to integrate machine learning, real-time GPS, and weather data for efficient flight monitoring and control. It simulates aircraft behavior using various sensor data, showcasing a combination of avionics simulation and artificial intelligence to predict and control aircraft performance.

## Features

- **Real-time Data Integration**: Fetches live GPS data using the Overpass API and real-time weather data for accurate simulations.
- **Sensor Simulation**: Simulates flight control, GPS, and weather sensors to replicate aircraft behavior.
- **Machine Learning Integration**: A `run_ml_model.py` script that integrates machine learning to analyze sensor data for predictive analytics.
- **Modular Architecture**: The system is modular, with separate components for flight control, GPS, weather simulation, and a user interface.

## Getting Started

### Prerequisites

Before you can run the project, make sure you have the following installed:

1. **C++ Compiler** (e.g., GCC or MSVC)
2. **Python** (for running the machine learning scripts)
3. **vcpkg** (for managing dependencies)
4. **CMake** (for building the project)

### Build Instructions

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/AvionicsSystems.git
    cd AvionicsSystems
    ```

2. **Install vcpkg:**  
   For detailed instructions on how to install vcpkg and its usage, please refer to the official [vcpkg repository](https://github.com/microsoft/vcpkg).

3. Build the project using `CMake`:

    ```bash
    mkdir build
    cd build
    cmake ..
    cmake --build .
    ```

### Running the Program

After building the project, you can run the executable to simulate the avionics system:

```bash
./AvionicsSystems
