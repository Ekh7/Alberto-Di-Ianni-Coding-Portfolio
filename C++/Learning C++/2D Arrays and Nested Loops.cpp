#include <iostream>
using namespace std;

int main() {
	int numberGrid[3][2] = {			//3 = how many total elements in the array. 2 = the max value in every array.
							{1,2},		//format is made to make it look like columns/like a grid.
							{3,4},
							{5,6}
	};

	cout << numberGrid[0][1] << endl << endl;	//accesses "2" in first element.

	for (int i = 0; i < 3; i++) {	//for every iteration of this for loop, the second 4 loop will completely iterate.
		for (int j = 0; j < 2; j++) {
			cout << numberGrid[i][j];//couts both numbers together from the array
		}
		cout << endl;
	}
	return 0;
}