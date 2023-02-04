#include <iostream>
#include <string>
#include <sstream>
using namespace std;


int main()
{
	int age;
	cout << "Enter your age"; cin >> age;cout << "you are " << age << " years old"<<endl;
	if (age <= 20)
		cout << "you are young"<<endl;
	else if (age >= 20)
		cout << "you are old"<<endl;


	string name;
	cout << "Enter your name"; cin >> name;

	cout << "\nHello " << name<<endl;




	return 0;
}