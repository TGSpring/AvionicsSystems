#include "ASHash.h"
#include <iostream>

void ASHash::insert(const std::string& key, double value) {
	data[key] = value;
}

double ASHash::get(const std::string& key) const {
	if (data.find(key) != data.end()) {
		return data.at(key);
	}
	throw std::out_of_range("Key not found: " + key);
}

bool ASHash::contains(const std::string& key) const {
	return data.find(key) != data.end();
}

void ASHash::remove(const std::string& key) {
	data.erase(key);
}

void ASHash::display() const {
	for (const auto& pair : data) {
		std::cout << pair.first << ": " << pair.second << "\n";
	}
}