import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
import matplotlib.pyplot as plt
import sys
import os

# Loading data from the log file
def load_data(file_path):
    data = pd.read_csv(file_path, sep=":", header=None)
    data.columns = ['Metric', 'Value']
    return data

# Preprocess the data
def preprocess_data(data):
    data = data.dropna()
    data = data.copy()
    data['Value'] = pd.to_numeric(data['Value'], errors='coerce')
    data = data.dropna().reset_index(drop=True)
    return data

# Training a model
def train_model(data):
    X = data.index.values.reshape(-1, 1)
    y = data['Value'].values

    # Ensure we have enough data
    if len(X) < 2:
        raise ValueError("Not enough data to train the model")

    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    model = LinearRegression()
    model.fit(X_train, y_train)

    predictions = model.predict(X_test)

    # Evaluate the model
    score = model.score(X_test, y_test)
    print(f"Model R^2 Score: {score}")

    return model, X_test, y_test, predictions

# Save data to results CSV
def save_results(output_file, y_test, predictions):
    results = pd.DataFrame({'Actual': y_test, 'Predicted': predictions})
    results.to_csv(output_file, index=False)
    print(f'Results saved to: {os.path.abspath(output_file)}')

# Visualization of data
def visualize_results(model, data):
    X = data.index.values.reshape(-1, 1)
    y = data['Value'].values
    plt.scatter(X, y, color='blue')
    plt.plot(X, model.predict(X), color='red')
    plt.title('ML Model Results')
    plt.xlabel('Index')
    plt.ylabel('Value')
    plt.show()

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python run_ml_model.py <input_file> <output_file>")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]

    # Load and preprocess data
    data = load_data(input_file)
    data = preprocess_data(data)

    # Train model
    try:
        model, X_test, y_test, predictions = train_model(data)
        # Save results
        save_results(output_file, y_test, predictions)
        # Visualize results
        visualize_results(model, data)
    except ValueError as e:
        print(e)