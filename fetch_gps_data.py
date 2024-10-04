import requests
import json
import random
import time

def generate_small_bbox():
    # Generate a small bounding box with correct order: south_lat, west_lon, north_lat, east_lon
    lat_min = 38.0
    lat_max = 38.01
    lon_min = -77.0
    lon_max = -76.99

    lat1 = round(random.uniform(lat_min, lat_max), 6)
    lon1 = round(random.uniform(lon_min, lon_max), 6)
    lat2 = round(random.uniform(lat_min, lat_max), 6)
    lon2 = round(random.uniform(lon_min, lon_max), 6)

    # Ensure bbox is correctly ordered: (southwest_lat, southwest_lon, northeast_lat, northeast_lon)
    bbox = (
        min(lat1, lat2),
        min(lon1, lon2),
        max(lat1, lat2),
        max(lon1, lon2)
    )
    
    return bbox

def fetch_gps_data(max_retries=3, delay=5):
    overpass_url = "http://overpass-api.de/api/interpreter"
    
    for attempt in range(max_retries):
        bbox = ','.join(map(str, generate_small_bbox()))
        overpass_query = f"""
        [out:json];
        node({bbox});
        out body qt;
        """

        try:
            query_url = f"{overpass_url}?data={requests.utils.quote(overpass_query)}"
            response = requests.get(query_url, timeout=10)
            response.raise_for_status()

            data = response.json()
            if 'elements' in data and data['elements']:
                # Randomly pick one node from the response
                node = random.choice(data['elements'])
                lat = node.get('lat', 0.0)
                lon = node.get('lon', 0.0)
                print(f"GPS Data - Latitude: {lat}, Longitude: {lon}")

                with open('gps_data.json', 'w') as file:
                    json.dump({'latitude': lat, 'longitude': lon}, file, indent=4)
                print("GPS data saved successfully.")
                return  # Exit after successful operation
            else:
                print("No nodes found in the response. Retrying...")
            
            time.sleep(delay)

        except requests.exceptions.RequestException as e:
            print(f"HTTP Request failed: {e}")
        except json.JSONDecodeError as e:
            print(f"Failed to decode JSON: {e}")
        except IOError as e:
            print(f"Failed to write file: {e}")

        # Wait before retrying
        time.sleep(delay)
    
    print("Max retries reached. Exiting.")

if __name__ == "__main__":
    fetch_gps_data()