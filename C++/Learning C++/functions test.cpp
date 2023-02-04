#include <iostream>
#include <string>
#include <sstream>
#include <stdlib.h>
#include <time.h>
#include <algorithm>
#include <array>
#include <iterator>
#include <list>

using namespace std;

int main()
{
	string array[3]={ "hello","mister","obama" };
	return 0;
}


void randomiserFunction(string array){
	srand(time(NULL)); //initialize the random seed
	random_shuffle(&array[array.begin], &array[array.end]);
	int e = 0;

	for (int e = 0; e < 2; e++) {
		cout << array[e] << endl;
	}
}

int main(string array)
{
	for (int i = 0; &array.end < 2; i++) {
		cout << array[i] << endl;
	}
	return 0;
}