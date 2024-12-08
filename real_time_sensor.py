from queue import Queue
from datetime import datetime
import time
import random
import threading

from run_ml_model import predicted_value

client = MongoClient("mongodb://localhost:27017")
db = client["AvionicsSystems"]
collection = db["SensorLogs"]

sensor_data_queue = Queue(maxsize=10)

latest_sensor_data = {}

def simulate_sensor_data():
    sensors = ["altitude", "temperature", "speed", "gps_lat", "gps_lon"]

    while True:
        sensor = random.choice(sensors)
        value = round(random.uniform(0, 100), 2) 
        timestamp = datetime.utcnow()

        sensor_reading = {
            "sensor": sensor,
            "value": value,
            "timestamp": timestamp
            }

def process_sensor_data():
    while True:
        if not sensor_data_queue.empty():
            sensor_reading = sensor_data_queue.get()

            latest_sensor_data[sensor_reading["sensor"]] = sensor_reading["value"]
            
            feature_map = latest_sensor_data
            predicted_value = predicted_value(feature_map)

            log_entry = {
                "sensor": sensor_reading["sensor"],
                "actual_value": sensor_reading["value"],
                "predicted_value": predicted_value,
                "timestamp": sensor_reading["timestamp"]
                }

            collection.insert_one(log_entry)
            print(f"Logged to MongoDB: {log_entry}")

            time.sleep(0.5)


            if __name__ == "__main__":

                sensor_thread = threading.Thread(target=simulate_sensor_data)
                process_thread = threading.Thread(target=process_sensor_data)

                sensor_thread.start()
                process_thread.start()

                sensor_thread.join()
                process_thread.join()