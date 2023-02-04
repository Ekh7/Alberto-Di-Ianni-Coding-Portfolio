#include <iostream>
#include <string>
#include <sstream>

using namespace std;

void sayHi(string name,int age) //this works fine ignore the red underline idk why its there
{
	cout << "Hello "<<name<<" you are " << age << endl;
}

double cube(double num)
{
	double result = num * num * num;
	return result;


}

int main()
{
	sayHi("Alberto", 19);


	//double answer = cube(5.0);
	//cout << answer;
	cout << cube(5.0); //shorter version of the above 2 lines of code



	return 0;
}

