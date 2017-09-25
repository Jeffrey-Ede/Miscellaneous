#include <iostream>
#include <algorithm>

using namespace std;

int smallest_multiple(int const *multiples, int size);

int main() {
	// Create array containing the numbers between 1 and 20
	int multiples[20];
	for (int i=0; i<20; i++) {
		multiples[i] = i+1;
	}

	// Get the array size
	int size = sizeof(multiples)/sizeof(int);

	int smallest = smallest_multiple(multiples, size);

	cout << smallest << endl;

	return 0;
}

/*
 * Calculates the smallest multiple of the integers in an array.
 * Integers can be in any order and there can be duplicates.
 */
int smallest_multiple(int const *multiples, int size) {

	// Make a copy of the array to manipulate
	int factors[size];
	memcpy(factors, multiples, sizeof(factors));
	std::sort(factors, factors+size);

	// Find the smallest multiple
	int smallest_multiple = 1;
	for (int i=0; i<size; i++){
		smallest_multiple *= factors[i];
		/* Divide all multiples of the factor by it to avoid multiple
		   multiplications by the same factor */
		for (int j=i+1; j<size; j++){
			if(factors[j]%factors[i] == 0){
				factors[j] /= factors[i];
			}
		}
	}

	return smallest_multiple;
}
