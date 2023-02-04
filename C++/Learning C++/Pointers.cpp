#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main()
{
    int age = 19;
        
    int *pAge = &age;
        //pointer variable. container for a memory address.
        //pointer must use the same variable type (int, string, etc) as its variable.
        //using and symbol(&) references the pointer directly.
    double gpa = 2.7;
    string name = "Alberto";

    cout<<pAge<<endl;
        //prints out a pointer. a hexadecimal memory address of where this variable is actually stored on the hard drive.
	cout<<*pAge;
        //prints out the assigned value of the pointer (the actual variable). the asterisk(*) de-references the pointer.

    cout <<*&gpa;
        //references the pointer but then de-references the pointer
    return 0;
}