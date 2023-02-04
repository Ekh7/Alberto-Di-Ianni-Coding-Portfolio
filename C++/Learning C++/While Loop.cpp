#include <iostream>
using namespace std;

int main()
{
									/////////////////	WHILE LOOPS	/////////////////
	cout << "regular while loop" << endl;
	
	int index = 1;
	while (index <= 5) {			//while loop. checks condition then runs code.
		cout << index << endl;
		index++;
	}

	cout << "do while loop" << endl;

	do {							//do while loop. runs code and then checks condition.
		cout << index << endl;
		index++;
	} while (index <= 5);			//will print 6 as it is adding without checking condition



							//be wary of infinite loops which can crash code, destroy lives, homes etc.
							//while loops are simple but there are more efficient/complex ways of doing things apparently

										/////////////////	FOR LOOPS	/////////////////
	cout << "regular for loop" << endl;
	
	for (int i = 1; i <= 5; i++) {
		cout << i << endl;
	}

							//for loop. does what while does but better.
							//keeps track of a value each time we go through a loop which is complex in a while loop (like above while example)
	
	cout << "for loop with array" << endl;
	
	int nums[] = { 1,2,5,7,3 };
	for (int iSex = 0; iSex < 5; iSex++) {
		cout << nums[iSex] << endl;
	}
	
	
	return 0;
}