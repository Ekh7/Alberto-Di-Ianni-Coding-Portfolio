#include <iostream>

using namespace std;

int main()
{
	bool isMale = true;
	bool isTall = true;

	if(isMale&&isTall) { //using && (AND Operator) could use || (OR Operator)
		cout << "hello tall boy";
	}else if (isMale&&!isTall) { //using ! (Negation Operator, negates the value of whatever it is before of)
		cout << "hello short boy";
	}else if (!isMale&&isTall) { //using same ! but before the first variable
		cout << ("hello tall non-boy");
	}else {						//if no true value can be met use the ELSE statement
		cout << "hello short non-boy";
	}
}