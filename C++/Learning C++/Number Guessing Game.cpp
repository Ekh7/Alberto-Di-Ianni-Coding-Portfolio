#include <iostream>
using namespace std;

int main() {
	int secretNum = 7;
	int guess = 0;
	int guessCount = 0;
	int guessLimit = 3;
	bool outOfGuesses = false;

	while (secretNum != guess && !outOfGuesses) {
		if (guess < guessLimit) {
			cout << "Enter guess: ";
			cin >> guess;
			guessCount++;
		}
		else {
			outOfGuesses = true;
		}
	}
	if (outOfGuesses = true){
		cout << "You Lose!";
	}
	else {
		cout << "Women Fear Me\nCode Fears Me\nMen Turn Their Eyes\nAway From Me\nAs I Walk\nNo Syntax Error\nMakes A Sound\nIn My Presence\nI Am Alone On\nThis Barren Earth.";
	}
	return 0;
}