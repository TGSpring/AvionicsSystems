import pandas as pd

def preprocess_data(sensor_file, gps_file, output_file):
    sensor_data = pd.read_csv(sensor_file)
    gps_data = pd.read_json(gps_file)

    combined_data = pd.concat([sensor_data, gps_data], axis=1)
    combined_data.to_csv(output_file, index=False)

    if __name__ == "__main__":
        preprocess_data('sensor_data.csv', 'gps_data.json', 'combined_data.csv')