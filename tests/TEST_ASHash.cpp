#include "ASHash.h"
#include <iostream>

int main() {
	ASHash hashTable;

	//Testing for insertions
	hashTable.insert("Altitude", 10000.0);
	hashTable.insert("Airspeed", 500.0);
	hashTable.insert("Orientation", 90.0);

	//Testing for retrievals
	try {
		std::cout << "Altitude: " << hashTable.get("Altitude") << std::endl;
		std::cout << "Airspeed: " << hashTable.get("Airspeed") << std::endl;
		std::cout << "Orienatation: " << hashTable.get("Orienation") << std::endl;
	}
	catch (const std::out_of_range& e) {
		std::cerr << "Error: " << e.what() << std::endl;
	}

	//Test contains
	std::cout << "Contains Altitude: " << hashTable.contains("Altitude") << std::endl;

	//Test removal
	hashTable.remove("Altitude");
	std::cout << "Constains 'Altitude' after removal: " << hashTable.contains("Altitude") << std::endl;

	//Display all key-value pairs
	hashTable.display();

	return 0;
}