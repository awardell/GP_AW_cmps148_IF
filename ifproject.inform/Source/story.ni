"Dr. Redrum's Cuckoo Mansion of Despair" by Gerardo Perez and Adam Wardell

Use no scoring.

A person can be free or locked-in.
The player is locked-in.
The player is in the Mansion Grounds.
Trapped is a scene. Trapped begins when the player is locked-in for the first time. [after owner stops talking to you].
Trapped ends when the player is free for the second time.
A window is a kind of door. A window is usually locked. A window is usually closed.
When Trapped begins:
	say "Suddenly, all of the windows are slammed shut and barricaded.[line break]You hear a click on the front door.[line break] As you stand there, trying to collect yourself, another loud bang shakes you up. Someone or something is coming upstairs. Something big.";
[Lock all doors to living room or lock just the front door, start beast movement algorithmn]

A thing can be breakable or unbreakable. A thing is usually unbreakable.
A thing can be broken or unbroken. A thing is usually unbroken. 
A thing can be heavy or light. A thing is usually light.
A thing can be seen or unseen. A thing is usually unseen.
A gem is a kind of thing.

The black gem is a gem.
A key is a kind of thing. The purple key is a key. The description is "A purple key of some sort." [cellar door key]
The card key is a key. The description is "A black and yellow striped card key. There is no other labeling."[control room machine]
[Maybe have another key around beasts neck.]

The Mansion Grounds is a room. "[if the player is in the mansion grounds for the first time]Some initial description of the grounds goes here![end if]".

The Entryway is a room. "[if the player is in the entryway for the first time]Some initial description of the entryway goes here![end if]".

The front door is a door. The front door is inside from the mansion grounds and outside from the entryway.

The Living Room is a room. "[if the player is in the living room for the first time]What used to be such a welcoming room is now the last place you want to be in. Your first instinct is to explore the rest of the mansion to try and find a way out, or at least avoid whatever is approaching.[line break][end if]There is a small table in the middle of the room, next to the couch. The fireplace burns."
The couch is scenery in the living room.
The living room table is scenery in the living room. The description is "There's nothing on there, although a nearby dangling phone wire tells you that there used to be a phone here."
The phone wire is scenery in the living room.
The fireplace is an open container in the living room. The fireplace is scenery.The description is "You peek into the fireplace, but there is nothing of interest."
A painting of a bee is in the living room. The description of the painting of a bee is "A vividly colored painting of a bumblebee."

Instead of inserting something into the fireplace:
	say "Perhaps you shouldn't.";

The Basement is a room. "[if the player is in The Basement for the first time]A huge basement that gives off some bad vibes and a sickly smell. It seems like the most unlikely escape from this prison, but there must be some clues around. The first thing you notice is large steel cage, its door swong wide open. [end if]The cage rests in a corner. You can also see a damaged old painting on the wall and a table with various medical utilities."
The cage is scenery in the basement. The description of the cage is "This is surely where that monster is kept. The bars of the cage seem to be heavily reinforced, yet somehow damaged. The cage's opening doesn't seem to use a traditional lock. It looks electronic, but there is no way to input a combination."
The cage lock is part of the cage. The description of the cage lock is "A steel black box. Must be controlled remotely."
A scenic painting is in the basement. The description of the scenic painting is "A painting of the deep blue sea melding with a beautiful red sunset."
[Cellar door: "Escape is close. You can feel the fresh cool wind blowing in. However, there is a sturdy lock preventing you from opening the door."] 
[after taking painting say "When picking up the painting you notice some text written on the back."]
[The back of the painting is part of the painting.]

[Note in the world index that rooms  are automatically assigned a floor if they are have a connection to one of these two rooms]
The First Floor Corridor is a room. The basement stairs are an open unopenable door. The initial appearance is "You can see the basement stairs here." The basement stairs are below the first floor corridor and above the basement.

The Second Floor Corridor is a room. The upper stairs are an open unopenable door. The initial appearance is "You can see the second floor stairs here." The upper stairs are above the first floor corridor and below the second floor corridor.

[The first floor corridor is south of the living room. (removed)]

The Study is a room. "You can tell the Doctor spends much of his time here. There is a bookshelf, a small desk covered with neat piles of papers, and a chair. You can also see a cabinet with [if the cabinet is broken]broken [end if]glass doors. [if the cabinet contains a yellow gem]Something is faintly reflecting light in there.[end if]".
[[temp]The study is south of the basement. ]
The bookshelf is scenery in the study. The description is "It is full of non-fiction books."
The books are part of the bookshelf.
Instead of examining the books, say "There's no time for that."
The glass cabinet is a locked, openable, breakable , scenery, container in the study. The description of the cabinet is "[if the cabinet is unbroken]There's a  small lock on the cabinet, although the doors seem to be made of fragile glass.[otherwise]The lock must have been for decoration."
There is a gem called the yellow gem in the cabinet. The description of the yellow gem is "A beautiful yellow gem."
The desk is scenery in the study.  The description of the desk is "Lots of business documents and paperwork. The desk has a drawer."
The drawer is part of the desk. The drawer is a closed openable container. 
A journal is in the drawer. The description of the journal is "You read the latest entry 'I never got around to sending his wife that letter. I just couldn't bear it, and left the matter as it was. The repurcussions for letting the world know would be too great.'"

Understand "read [journal]" as examining.
Before examining the journal:
	if the player is not carrying the journal:
		try taking the journal;

The Armory is a room. "This room is lined with gun racks. Too bad they're all empty, as if the place had been robbed. There is also a locker to the left of the room and lots of ammo boxes strewn around."
There are ammo boxes in the armory. The description of the ammo boxes is "The only kinds I can find are shotgun and rifle ammo."
The locker is a closed openable container. The locker is scenery in the armory. 
There is gun cleaning equipment in the locker. 
A small pistol is in the locker. Understand "gun" as the small pistol.
Before taking the small pistol for the first time:
	say "[italic type]'That bastard must have forgotten about this one.'[roman type]";
Before taking ammo:
	say "You notice the lightness of the boxes. All empty.";

The Master Bedroom is a room. "There is a rather large bed in the room. It also has a closet."
The bed is scenery in the master bedroom. The description of the bed is "It looks untouched. You doubt if that madman even sleeps."
The closet is an open enterable container in the master bedroom. 
The statue is in the master bedroom. The description of the statue is "A life-size statue of a man. He shows a serene smile as he holds out both hands. You notice something peculiar about this statue's chest." The initial appearance is "There is a statue resting a the corner of the room."
The statue's chest is part of the statue. The statue's chest has a number called capacity. The capacity of the chest is 2. The description of the statue's chest is "[if the number of things that are part of the  statue's chest is 0]On its right chest are two octogonal shaped indentations that look like they might have held something.[otherwise]Right now it holds: [list of things that are part of the statue's chest][end if]." 
The statue's hands are a supporter. The hands are part of the statue.

[[temp]the master bedroom is south of the study.]

Bathroom One is a room.  "A standard bathroom with a shower, toilet and sink. There is a large mirror with a fancy border near the sink." 
The toilet is scenery in bathroom one. The sink is scenery in bathroom one.
The mirror is a breakable thing in Bathroom One. The mirror has a number called capacity. The capacity of the mirror is 1. The description of the mirror is "Looks expensive. [if something is part of the mirror]This mirror is embedded with a [list of things that are part of the mirror] that appears to be removable."
The red gem is a gem. The red gem is part of the mirror.

Bathroom Two is a room. "There is nothing of interest here."

The Guest Room is a room. "This room looks like it has never been used. There are cobwebs everywhere.  A single bed is set up in the room, as well as a dresser."
The dresser is scenery in the guest room. The dresser is a closed, openable container. The description is "With drawer fronts crafted from reclaimed saal wood, the Stria Dresser brings rustic charm to the bedroom. In a former life, the wood was used in Indian railway trestles. Today, it's prized for its natural imperfections and character; no two pieces are exactly the same." 
The dresser contains an envelope. The envelope is a closed openable container. 
Instead of examining the envelope when the envelope is closed, say "It is sealed. There is nothing written on it."
After opening the envelope for the first time, say "What you find inside diminishes your hopes of escaping. There are several idenfification cards of people from all over the country. They must have been lured in by this maniac and fed to that beast. This is probably his way of keeping accolades."
Mary's ID is in the envelope. The description is "Mary Schweller[line break]Date of Birth: 02-24-1953."
Frank's ID is in the envelope. The description is "Frank Zappa[line break]Date of Birth: 12-21-1940."
Jonathan's ID is in the envelope. The description is "Jonathan Maxwell[line break]Date of Birth: 08-12-1948."
Andrew's ID is in the envelope. The description is "Andrew Kong[line break]Date of Birth 03-06-1950."
The blue gem is a gem. The blue gem is in the dresser.

The cobwebs are scenery in the guest room.
There is a framed print in the guest room. The description is "[italic type]'Mi casa es su casa.'[roman type]".

The kitchen is a room. "A large kitchen and dining combination room. There is a fine stone-top counter separating the kitchen from the rest of the room. There are some dish cabinets with nothing but kitchen utensils inside."The printed name is "Kitchen & Dining Room". Understand "dining room" as the kitchen.
The dining table is scenery in the kitchen. The dining table is a supporter.
The stove is scenery in the kitchen. 
The dish cabinets are scenery in the kitchen. The dish cabinets are transparent, closed, openable containers.  
There are kitchen utensils in the dish cabinets. There are dishes in the dish cabinets.
The kitchen counter is scenery in the kitchen. The description is "What a nice polish."
There is fake fruit on the dining table. The description of the fake fruit is "It's plastic fruit. An unreasonable rage fills your body."
The regrigerator is scenery. The regrigerator is a closed openable container.
Instead of taking the kitchen utensils, say "It would be better to leave these here."
Instead of taking the dishes, say "It would be better to leave these here."

[The pantry should not be placed randomly. It uses northeast in order to not conflict with room placement algorithmn]
A box is a kind of container. A box can be in-place or dislocated.
The Pantry is northeast of the kitchen. "A pantry that receives little light. There is a rack that holds unperishable food."
There are food boxes in the pantry. Food boxes are a box. The food boxes are heavy. The food boxes are in-place. The initial appearance is "At the end of the room are a few large boxes." The description of the boxes is "These boxes hold nothing of interest."
Understand "box" as boxes.
Instead of examining or opening the food boxes when the boxes are in-place:
	say "They contain more food stuff. As you frustratedly rattle the box flaps, you notice something about the wall. From this close range, you can see hinges peering out from behind the boxes. [line break]You push the boxes aside.";
	now the food boxes are dislocated;
	now the secret passage is described;

The secret passage is a door. The secret passage is east of the pantry and southwest of the Control Room. The secret passage is undescribed.  The description of the secret passage is "The door is painted the same color as the walls. The passage seems big enough for a single person to crawl through."
Before going through the secret passage:
	say "You manuever yourself through the dusty two-way path. It takes you a few minutes to reach the other room."; [maybe change message if rooms are on different floors]

[The Control Room should be locked]
The Control Room is a room.  "This room is locked from the outside. The doctor must have his reasons for keeping it secret."
There is a big machine in the control room. The initial appearance is "A large electronic machine fills up most of the room." The description is "The only button that you can recognize is the power button. Most of the others are marked with codes like 'NR-3'. You can also see a lever on the machine." The big can be on or off. The big machine is off. 
The lever is part of the big machine. The description is "It's marked 'Emergency Lockdown'. Right now it's in the [if the lever is pushed up]on position (up)[otherwise]off position (down).". The lever can be pushed up or pulled down. It is pushed up.  
The big machine can be locked or unlocked. The big machine is locked.
The power button is part of the big machine. The description is "A big red button."
The card slot is part of the big machine. The description is "A slot for a card key."

Instead of pulling the lever:
	if the lever is pushed up and the machine is off:
		say "The machine should be turned on first.";
		stop the action;
	if the lever is pushed up and the machine is on and the machine is locked:
		say "It won't budge. You take note of the card slot on the machine.";
		stop the action;
	otherwise:
		say "You hear a loud slamming all around you. Great joy fills you, and you run to the front door.";
		now the player is free;

Instead of inserting something into the card slot:
	if the noun is not the card key:
		say "That won't do.";
		stop the action;
	now the machine is unlocked;
	now the card key is part of the card slot;
	say "You get a beep signifying success.";
	
Instead of taking a card key that is part of something (called the holder):
	say "You remove [the noun] from [the holder].";
	now the player carries the noun;

The Den is a room.  "The den is comfortably furnished."
The bear head is in the den. It is fixed in place. The bear head has a number called capacity. The capacity of the bear head is 1. The initial appearance is "There is a a mount of a bear head on the wall." The description is "So this man is a hunter. [if the player has been in the armory]That explains all of the guns back there. [end if]The bear looks frightening, but you'd much rather have one of these lurking in the mansion than that monster. [if the black gem is part of the bear head]A black gem serves as a substitute for the bear's nose."
The black gem is part of the bear head.
Understand "bear nose" as black gem.
Understand "mount" as bear head.

Bedroom C is a room.
The ottoman is a fixed in place closed openable container in bedroom c. The initial appearance is "An ottoman is placed beside the bed." The description is "A leather ottoman."
The ottoman contains a photograph. The description of the photograph is "A younger Dr. Redrum standing next to a man. [if the statue is seen]His companion looks remarkably like the statue in the master bedroom. [end if]A lush rainforest sorrounds them."
The ottoman contains blank paper. 
The bedroom-c bed is scenery.

[some more story background]

Bedroom B is a room. "It looks like this room was never set up.  There is no furniture, just bare, empty walls."
The walls are scenery in Bedroom B. The description is "Tell me your secrets, wall."

The Narrow Hallway First is a room. The printed name is "Narrow Hallway (First Floor)".
The metal door is a locked door. The metal door is northwest of the narrow hallway first and east of the Control Room. The initial appearance is  "A peculiar black door is connected to this hallway." The description of the metal door is "I need a key for this."


The Narrow Hallway Second is a room. The printed name is "Narrow Hallway (Second Floor)".

[Rules]
[def the beast is near player when mandist is 1]

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.
Every turn:
	say "From here you can go [list of viable directions]."
Carry out examining a thing: 
	now the noun is seen.
	
After examining a container:
	if the dresser is closed:
		say "The [noun] is closed."
[for debugging]
Teleporting is an action applying to one visible thing. Understand "go to [any room]" as teleporting. Carry out teleporting: move the player to the noun.

[-------------General Actions----------------]
Understand the command "break" as something new.
Breaking is an action applying to one thing.  Understand "break [something]" as breaking.

Check breaking:
	if the noun is not breakable:
		say "You can't break [italic type]that[roman type].";
		stop the action;
	if the noun is breakable and the noun is broken:
		say "It's already broken.";
		stop the action;
Carry out breaking:
	now the noun is broken;
	if the noun is a container:
		now the noun is open;
Report breaking:
	say "You break [the noun] with a loud crash.";

Gem-inserting it in is an action applying to one carried thing and one thing. Understand "gem-insert [something] in [something]" as gem-inserting it in. 
Check gem-inserting:
	if the noun is not a gem:
		say "It doesn't fit.";
		stop the action;
	if the number of things that are part of the second noun is the capacity of the second noun:
		say "There's already [capacity of the second noun] gems here. Try taking back one of them.";
		stop the action;

Carry out gem-inserting:
	now the noun is part of the second noun;
	if the blue gem is part of the second noun and the red gem is part of the second noun and the purple key is off-stage:
		try putting the purple key on the statue's hands;
	if the black gem is part of the second noun and the red gem is part of the second noun and the card key is off-stage:
		try putting the card key on the statue's hands;

Report gem-inserting:
	say "You insert [the noun] into [the second noun]. It fits perfectly.";
	if there is a key on the statue's hands and the second noun is the statue: [probably can be abused, but whos going to try?]
		say "The statue drops a key into its hands.";
	otherwise: 
		say "Nothing else happened."

Instead of taking a gem that is part of something (called the holder):
	say "You remove [the noun] from [the holder].";
	now the player carries the noun;
Instead of inserting something into the statue's chest:
	try gem-inserting the noun in the chest instead.
Instead of inserting something into the statue:
	try gem-inserting the noun in the chest instead.
Instead of inserting something into the mirror:
	try gem-inserting the noun in the mirror instead.
Instead of inserting something into the  bear head:
	try gem-inserting the noun in the bear head instead.
	

Understand the command "press" as something new.
Pressing is an action applying to one thing. Understand "press [something]" as pressing.

Instead of pushing the button:
	try pressing the button;

Instead of switching on the machine:
	if the machine is on:
		say "It's already on.";
		stop the action;
	try pressing the power button;

Instead of switching off the machine:
	if the machine is off:
		say "It's already off.";
		stop the action;
	try pressing the power button;

Check pressing:
	if the noun is the machine:
		try pressing the power button;
		stop the action;
	if the noun is not the power button:
		say  "Nothing happens.";
		stop the action;

Carry out pressing:
	if the machine is off:
		now the machine is on;
	otherwise if the machine is on:
		now the machine is off;
Report pressing:
	if the machine is on:
		say "The machine turns on.";
	if the machine is off:
		say "The machine turns off.";

Instead of taking something heavy, say "That's too heavy for you to carry."

[Some Game Rules:
One shot severely wounds the beast, and promptly after it moves to another room. Two shots kills it.
[using an action ticks beast algorithm, moving from room to room causes a bigger step]

[Premise, the beast walking around is the man's best friends. He feels the best he could do was at least feed him]
[The beast is sick and old, and starving, so it is not very agile]
[if running away for first time, jump player to a random room]
[maybe the player can hide under stuff in certain rooms]
[have a point in story where player finds out who person in statue is, affecting the description (5.5)]
[]
[
Some Alerts:
If manDist == 1 && onSameFloor 
	if onSameFloor
	[perhaps should do something to give direction]
		say "You can hear the beast in one of the rooms next to this one."
If manDist == 0
	if beastIsAbove
		say "You can hear the beast directly above you."
	if beastIsBelow
		say "Loud footsteps are audible below you."
Manhattan Distance:
|BeastX - PlayerX| + |BeastY - PlayerY|
]]

The placeholder is a room.

Table 1 - Floor One
_1		_2		_3
placeholder		Entryway		placeholder
placeholder		placeholder		placeholder
placeholder		placeholder		placeholder
placeholder		First Floor Corridor		placeholder

Table 2 - Floor Two
_1		_2		_3
placeholder		placeholder		placeholder
placeholder		placeholder		placeholder
placeholder		placeholder		placeholder
placeholder		Second Floor Corridor		placeholder

[temp dummy rooms - replace these]
Megaraptor, Skeletor, Godzilla, Mothra, Bukkake, Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, and Carolina are rooms.

Table 3 - First Floor Available Rooms
name
Guest Room
Bathroom One
kitchen
Armory
Den
Narrow Hallway First
Master Bedroom
Mothra
Bukkake
Megaraptor

Table 4 - Second Floor Available Rooms
name
Bedroom C
Bedroom B
Bathroom Two
Narrow Hallway Second
New York
New Jersey
Pennsylvania
Delaware
Maryland
Virginia
Carolina

currIndex is a number that varies.
currRoom is a room that varies.

northRoom is a room that varies.
southRoom is a room that varies.
eastRoom is a room that varies.
westRoom is a room that varies.

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
	[CONNECT ROOMS, BOTTOM FLOOR]
	[1,1]
	now currRoom is _1 in row 1 of table 1;
	now eastRoom is _2 in row 1 of table 1;
	now southRoom is _1 in row 2 of table 1;
	change east exit of currRoom to eastRoom;
	change south exit of currRoom to southRoom;
	[1,2]
	now currRoom is _2 in row 1 of table 1;
	now westRoom is _1 in row 1 of table 1;
	now eastRoom is _3 in row 1 of table 1;
	now southRoom is _2 in row 2 of table 1;
	change west exit of currRoom to westRoom;
	change east exit of currRoom to eastRoom;
	change south exit of currRoom to southRoom;
	[1,3]
	now currRoom is _3 in row 1 of table 1;
	now westRoom is _2 in row 1 of table 1;
	now southRoom is _3 in row 2 of table 1;
	change west exit of currRoom to westRoom;
	change south exit of currRoom to southRoom;
	[2,1]
	now currRoom is _1 in row 2 of table 1;
	now northRoom is _1 in row 1 of table 1;
	now eastRoom is _2 in row 2 of table 1;
	now southRoom is _1 in row 3 of table 1;
	change north exit of currRoom to northRoom;
	change east exit of currRoom to eastRoom;
	change south exit of currRoom to southRoom;
	[2,2]
	now currRoom is _2 in row 2 of table 1;
	now northRoom is _2 in row 1 of table 1;
	now westRoom is _1 in row 2 of table 1;
	change north exit of currRoom to northRoom;
	change west exit of currRoom to westRoom;
	[2,3]
	now currRoom is _3 in row 2 of table 1;
	now northRoom is _3 in row 1 of table 1;
	now southRoom is _3 in row 3 of table 1;
	change north exit of currRoom to northRoom;
	change south exit of currRoom to southRoom;
	[3,1]
	now currRoom is _1 in row 3 of table 1;
	now northRoom is _1 in row 2 of table 1;
	now southRoom is _1 in row 4 of table 1;
	change north exit of currRoom to northRoom;
	change south exit of currRoom to southRoom;
	[3,2]
	now currRoom is _2 in row 3 of table 1;
	now eastRoom is _3 in row 3 of table 1;
	now southRoom is _2 in row 4 of table 1;
	change east exit of currRoom to eastRoom;
	change south exit of currRoom to southRoom;
	[3,3]
	now currRoom is _3 in row 3 of table 1;
	now northRoom is _3 in row 2 of table 1;
	now westRoom is _2 in row 3 of table 1;
	now southRoom is _3 in row 4 of table 1;
	change north exit of currRoom to northRoom;
	change west exit of currRoom to westRoom;
	change south exit of currRoom to southRoom;
	[4,1]
	now currRoom is _1 in row 4 of table 1;
	now northRoom is _1 in row 3 of table 1;
	now eastRoom is _2 in row 4 of table 1;
	change north exit of currRoom to northRoom;
	change east exit of currRoom to eastRoom;
	[4,2]
	now currRoom is _2 in row 4 of table 1;
	now northRoom is _2 in row 3 of table 1;
	now westRoom is _1 in row 4 of table 1;
	now eastRoom is _3 in row 4 of table 1;
	change north exit of currRoom to northRoom;
	change west exit of currRoom to westRoom;
	change east exit of currRoom to eastRoom;
	[4,3]
	now currRoom is _3 in row 4 of table 1;
	now northRoom is _3 in row 3 of table 1;
	now westRoom is _2 in row 4 of table 1;
	change north exit of currRoom to northRoom;
	change west exit of currRoom to westRoom;
	[CONNECT ROOMS, TOP FLOOR]
	[1,1]
	now currRoom is _1 in row 1 of table 2;
	now eastRoom is _2 in row 1 of table 2;
	now southRoom is _1 in row 2 of table 2;
	change east exit of currRoom to eastRoom;
	change south exit of currRoom to southRoom;
	[1,2]
	now currRoom is _2 in row 1 of table 2;
	now westRoom is _1 in row 1 of table 2;
	now eastRoom is _3 in row 1 of table 2;
	now southRoom is _2 in row 2 of table 2;
	change west exit of currRoom to westRoom;
	change east exit of currRoom to eastRoom;
	change south exit of currRoom to southRoom;
	[1,3]
	now currRoom is _3 in row 1 of table 2;
	now westRoom is _2 in row 1 of table 2;
	now southRoom is _3 in row 2 of table 2;
	change west exit of currRoom to westRoom;
	change south exit of currRoom to southRoom;
	[2,1]
	now currRoom is _1 in row 2 of table 2;
	now northRoom is _1 in row 1 of table 2;
	now southRoom is _1 in row 3 of table 2;
	change north exit of currRoom to northRoom;
	change south exit of currRoom to southRoom;
	[2,2]
	now currRoom is _2 in row 2 of table 2;
	now northRoom is _2 in row 1 of table 2;
	now southRoom is _2 in row 3 of table 2;
	change north exit of currRoom to northRoom;
	change south exit of currRoom to southRoom;
	[2,3]
	now currRoom is _3 in row 2 of table 2;
	now northRoom is _3 in row 1 of table 2;
	now southRoom is _3 in row 3 of table 2;
	change north exit of currRoom to northRoom;
	change south exit of currRoom to southRoom;
	[3,1]
	now currRoom is _1 in row 3 of table 2;
	now northRoom is _1 in row 2 of table 2;
	now southRoom is _1 in row 4 of table 2;
	change north exit of currRoom to northRoom;
	change south exit of currRoom to southRoom;
	[3,2]
	now currRoom is _2 in row 3 of table 2;
	now northRoom is _2 in row 2 of table 2;
	now southRoom is _2 in row 4 of table 2;
	change north exit of currRoom to northRoom;
	change south exit of currRoom to southRoom;
	[3,3]
	now currRoom is _3 in row 3 of table 2;
	now northRoom is _3 in row 2 of table 2;
	now southRoom is _3 in row 4 of table 2;
	change north exit of currRoom to northRoom;
	change south exit of currRoom to southRoom;
	[4,1]
	now currRoom is _1 in row 4 of table 2;
	now northRoom is _1 in row 3 of table 2;
	now eastRoom is _2 in row 4 of table 2;
	change north exit of currRoom to northRoom;
	change east exit of currRoom to eastRoom;
	[4,2]
	now currRoom is _2 in row 4 of table 2;
	now northRoom is _2 in row 3 of table 2;
	now westRoom is _1 in row 4 of table 2;
	now eastRoom is _3 in row 4 of table 2;
	change north exit of currRoom to northRoom;
	change west exit of currRoom to westRoom;
	change east exit of currRoom to eastRoom;
	[4,3]
	now currRoom is _3 in row 4 of table 2;
	now northRoom is _3 in row 3 of table 2;
	now westRoom is _2 in row 4 of table 2;
	change north exit of currRoom to northRoom;
	change west exit of currRoom to westRoom;