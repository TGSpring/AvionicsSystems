//ASHash.h

#ifndef HASHTABLE_H
#define HASHTABLE_H

#include <string>
#include <unordered_map>

class ASHash {
private:
	std::unordered_map<std::string, double> data; //Key value pairs.

public: 
	//Insert a key value pair
	void insert(const std::string& key, double value);

	//Retrieve a value by key
	double get(const std::string& key) const;

	//Check if key exists
	bool contains(const std::string& key) const;

	//Remove a key value pair
	void remove(const std::string& key);

	//Display all key value pairs (for debugging/exporting)
	void display() const
		;
};

#endif