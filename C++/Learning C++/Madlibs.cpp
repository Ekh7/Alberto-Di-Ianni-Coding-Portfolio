// Madlibs.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main()
{
	string colour, pluralNoun, celebrity;
	cout << "enter a colour "; getline(cin, colour);
	cout << "enter a plural noun "; getline(cin, pluralNoun);
	cout << "enter a celebrity "; getline(cin, celebrity);

	cout << "Roses are " << colour << endl << pluralNoun << " are blue"<<endl<<"I love " << celebrity;

	return 0;
}

