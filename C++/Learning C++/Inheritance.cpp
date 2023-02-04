#include <iostream>
using namespace std;
//SUPERCLASS
//basic class where other classes refer from

class Chef{
    public:
        void makeChicken(){
            cout<<"the chef makes chicken"<<endl;
        }
        void makeSalad(){
            cout<<"the chef makes salad"<<endl;
        }
        void makeSpecialDish(){
            cout<<"the chef makes bbq ribs"<<endl;
        }
};

//SUBCLASS
//class which inherits things from a previous class
class ItalianChef:public Chef{ //refers to the class we want to inherent from. can use all the functions of Chef class.
    public:
        void makePasta(){
            cout<<"the chef makes pasta"<<endl; //exclusive to ItalianChef cannot be called upon by Chef as there is no inheritence on Chef's side.
        }
        void makeSpecialDish(){
            cout<<"the chef makes chicken parm"<<endl; //takes an already defined function and overwrites it for use in the inherited class
        }
};


int main() {
    Chef chef;
    chef.makeChicken();


	return 0;
}