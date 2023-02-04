#include <iostream>
#include <string>
#include <sstream>
#include <stdlib.h>
#include <time.h>
#include <algorithm>
#include <array>

using namespace std;


int main()
{
	string Skills[27] = { "Heavy Armour","Medium Armour","Light Armour","Unarmoured","Armorer","Block","Long Blade","Short Blade","Blunt Weapon","Axe","Spear","Hand to Hand","Marksman","Distruction","Conjuration","Illusion","Alteration","Restoration","Mysticism","Alchemy","Enchant","Sneak","Security","Speechcraft","Mercantile","Athletics","Acrobatics"};
	random_shuffle(&Skills[0], &Skills[27]);


	string majorSkills[5] = {};
	string minorSkills[5] = {};

	copy(Skills, Skills + 5, majorSkills);
	cout<<"Your Major Skills are:"<<endl;
	for (const auto& e : majorSkills) 
	{
		cout<<e<<endl;
	}


	int skillsCount=0;
	int skillsNullCount = 0;
	for (int i = 0; i < 27; i++) //for loop - RESEARCH THIS

	{
		if (Skills[i] != "") //edit this to check if String value is empty not char value
			skillsCount++;
		if (Skills[i] == "") //edit this to check if String value is empty not char value
			skillsNullCount++;
	}

	cout << "Elements in array are: "<<skillsCount<<endl;//output number of elements in array
	cout << "Empty Elements in array are: "<<skillsNullCount<<endl;
	cout << Skills[40]<<endl; //output array element with no value

	



	return 0;
}