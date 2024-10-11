# Avionics System Simulation

## Description

The **Avionics System Simulation** is an aircraft sensor simulation program designed to emulate various avionics functionalities. It integrates real-time GPS data using the OpenStreetMap API and incorporates machine learning algorithms to analyze and predict sensor data metrics.

### Current Features

- **Sensor Simulation**: Simulates various aircraft sensors to provide realistic data for analysis.
- **Real-Time GPS Integration**: Utilizes the Overpass API to fetch real-time GPS data, enhancing the accuracy of the simulation.
- **Weather Data Simulation**: Includes a module for simulating weather conditions affecting flight dynamics.
- **Machine Learning Integration**: Employs a machine learning script that:
  - Loads and preprocesses data from log files.
  - Trains a linear regression model to predict sensor values.
  - Visualizes the results and evaluates model performance.

### Machine Learning Script

The existing machine learning script, `run_ml_model.py`, performs the following tasks:

1. **Load Data**: Reads data from a specified log file.
2. **Preprocess Data**: Cleans the data by removing null values and converting data types.
3. **Train Model**: Trains a linear regression model using the preprocessed data.
4. **Save Results**: Outputs the actual vs. predicted values to a CSV file.
5. **Visualize Results**: Displays a scatter plot of the actual data and the regression line.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/AvionicsSystem.git
   cd AvionicsSystem
2. Install the necessary dependencies using vcpkg and Python's package manager:
   ```bash
   vcpkg install <dependencies>
   pip install -r requirements.txt

### Usage
The program operates through a numbered menu in a command line interface. Upon running the program, users will be presented with options to select various functionalities, such as starting the simulation, viewing results, or exiting the program. Simply enter the corresponding number for your choice and follow any additional prompts.
