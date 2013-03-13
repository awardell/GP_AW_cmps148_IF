"The Mansion" by Adam Wardell and Gerardo Perez

The Entryway is a room.

A FirstFloor is a kind of room.
A SecondFloor is a kind of room.
A UsedRoom is a kind of room.

Skrillex, Skeletor, Godzilla, Mothra, Bukake, Bedroom, Bathroom, Kitchen, and Hallway are FirstFloors.

The placeholder is a room.

Table 1 - Floor One
_1		_2		_3
placeholder		placeholder		placeholder
placeholder		placeholder		placeholder
placeholder		placeholder		placeholder

Table 2 - Floor Two
_1		_2		_3
placeholder		placeholder		placeholder
placeholder		placeholder		placeholder
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
Bukake

currIndex is a number that varies.
currRoom is a room that varies.

when play begins:
	repeat through Table 1:
		now currIndex is a random number from 1 to the number of rows in Table 3;
		while there is no name in row currIndex of Table 3:
			now currIndex is a random number from 1 to the number of rows in Table 3;
		now currRoom is name in row currIndex of Table 3;
		now _1 entry is currRoom;
		say "[_1 entry] ";
		blank out name in row currIndex of Table 3;
		now currIndex is a random number from 1 to the number of rows in Table 3;
		while there is no name in row currIndex of Table 3:
			now currIndex is a random number from 1 to the number of rows in Table 3;
		now currRoom is name in row currIndex of Table 3;
		now _2 entry is currRoom;
		say "[_2 entry] ";
		blank out name in row currIndex of Table 3;
		now currIndex is a random number from 1 to the number of rows in Table 3;
		while there is no name in row currIndex of Table 3:
			now currIndex is a random number from 1 to the number of rows in Table 3;
		now currRoom is name in row currIndex of Table 3;
		now _3 entry is currRoom;
		say "[_3 entry]";
		blank out name in row currIndex of Table 3;
		say "[line break]";