"The Mansion" by Adam Wardell and Gerardo Perez

The FirstFloor is a region.

Entryway and Stairwell are rooms in the FirstFloor.

Bedroom, Bathroom, Kitchen, Hallway, Skrillex, Skeletor, Godzilla, Mothra, Enchillada, Katana, Tampon, and Bukkake are rooms in the FirstFloor.

The SecondFloor is a region.

Upper Landing is a room in the SecondFloor.

New Hampshire, Massachusetts, Rhode Island, Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, Carolina, and Georgia are rooms in the SecondFloor.


The placeholder is a room.

Table 1 - Floor One
_1		_2		_3
placeholder		Entryway		placeholder
placeholder		placeholder		placeholder
placeholder		Stairwell		placeholder
placeholder		placeholder		placeholder

Table 2 - Floor Two
_1		_2		_3
placeholder		placeholder		placeholder
placeholder		placeholder		placeholder
placeholder		Upper Landing		placeholder
placeholder		placeholder		placeholder

Table 3 - First Floor Available Rooms
name
Bedroom
Bathroom
Kitchen
Hallway
Skrillex
Skeletor
Godzilla
Mothra
Bukkake
Enchillada
Katana
Tampon

Table 4 - Second Floor Available Rooms
name
New Hampshire
Massachusetts
Rhode Island
Connecticut
New York
New Jersey
Pennsylvania
Delaware
Maryland
Virginia
Carolina
Georgia

currIndex is a number that varies.
currRoom is a room that varies.

when play begins:
	repeat through Table 1:
		if _1 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 3;
			while there is no name in row currIndex of Table 3:
				now currIndex is a random number from 1 to the number of rows in Table 3;
			now currRoom is name in row currIndex of Table 3;
			now _1 entry is currRoom;
			blank out name in row currIndex of Table 3;
		say "[_1 entry] ";
		if _2 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 3;
			while there is no name in row currIndex of Table 3:
				now currIndex is a random number from 1 to the number of rows in Table 3;
			now currRoom is name in row currIndex of Table 3;
			now _2 entry is currRoom;
			blank out name in row currIndex of Table 3;
		say "[_2 entry] ";
		if _3 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 3;
			while there is no name in row currIndex of Table 3:
				now currIndex is a random number from 1 to the number of rows in Table 3;
			now currRoom is name in row currIndex of Table 3;
			now _3 entry is currRoom;
			blank out name in row currIndex of Table 3;
		say "[_3 entry]";
		say "[line break]";
	say "[line break]";
	repeat through Table 2:
		if _1 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 4;
			while there is no name in row currIndex of Table 4:
				now currIndex is a random number from 1 to the number of rows in Table 4;
			now currRoom is name in row currIndex of Table 4;
			now _1 entry is currRoom;
			blank out name in row currIndex of Table 4;
		say "[_1 entry] ";
		if _2 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 4;
			while there is no name in row currIndex of Table 4:
				now currIndex is a random number from 1 to the number of rows in Table 4;
			now currRoom is name in row currIndex of Table 4;
			now _2 entry is currRoom;
			blank out name in row currIndex of Table 4;
		say "[_2 entry] ";
		if _3 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 4;
			while there is no name in row currIndex of Table 4:
				now currIndex is a random number from 1 to the number of rows in Table 4;
			now currRoom is name in row currIndex of Table 4;
			now _3 entry is currRoom;
			blank out name in row currIndex of Table 4;
		say "[_3 entry]";
		say "[line break]";