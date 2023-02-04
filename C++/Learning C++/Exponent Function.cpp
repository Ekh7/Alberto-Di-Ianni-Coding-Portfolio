#include <iostream>
using namespace std;

									//exponent function to square/cube any number you give it

int power(int baseNum, int powNum) {
	int result = 1;
	for (int i = 0; i < powNum; i++) {
		result = result * baseNum;
	}
	return result;
}

int main() {
	cout << power(4, 2);
	return 0;
}