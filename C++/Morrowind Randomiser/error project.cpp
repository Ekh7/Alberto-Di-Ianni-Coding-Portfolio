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
	bool active = true;
	while (active=true)
	{
		srand(time(NULL)); //initialize the random seed


	//output the random character's race
		string Races[10] = { "Argonian","Breton","Dark Elf", "High Elf", "Imperial", "Khajiit", "Nord", "Orc", "Redguard", "Wood Elf" };
		random_shuffle(&Races[0], &Races[10]);
		cout << "Race:" << endl << Races[0] << endl << endl;


		//output the random birthsign
		string Birthsigns[13] = { "The Warrior", "The Mage", "The Thief", "The Serpent", "The Lady", "The Steed", "The Lord", "The Apprentice", "The Atronarch", "The Ritual", "The Lover", "The Shadow", "The Tower" };
		random_shuffle(&Birthsigns[0], &Birthsigns[13]);
		cout << "Birthsign:" << endl << Birthsigns[0] << endl << endl;


		//output the random skills
		string Skills[27] = { "Heavy Armour","Medium Armour","Light Armour","Unarmoured","Armorer","Block","Long Blade","Short Blade","Blunt Weapon","Axe","Spear","Hand to Hand","Marksman","Distruction","Conjuration","Illusion","Alteration","Restoration","Mysticism","Alchemy","Enchant","Sneak","Security","Speechcraft","Mercantile","Athletics","Acrobatics" };
		random_shuffle(&Skills[0], &Skills[27]);

		Skills[0] = "Major Skills:";
		Skills[6] = "";
		Skills[7] = "Minor Skills:";

		for (int i = 0; i < 13; i++) {
			cout << Skills[i] << endl;
		}
		cout << "\n";
		string Challenges[8] = { "Kill Gaenor before level 25", "Iron Nerevarine", "Kill everyone you see after leaving Seyda Neen", "Get to Solstheim without fast travel",  "Build a pillow fort", "Hoard spoons", "Start Bloodmoon at level 1","Can't drop or sell anything" };
		random_shuffle(&Challenges[0], &Challenges[8]);
		cout << "Playthrough Challenge:" << endl << Challenges[0] << endl << endl;

		//				changed it so instead of assigning 3 whole arrays to different things, 
		//			it just shuffles the skills array and assigns new values to the first and 6th 
		//				part of the array before printing through 1 - 12 parts of the array
		bool active = false;

		char option;
		cout << "Reroll? y/n: "; cin >> option;
		if (option == 'y') {
			bool active = true;
			cout << "\n";
		}

		else {
			cout << "Good luck, Nerevar!";
			break;
		}

		

	}
	

	
	return 0;


}

