"Dr. Redrum's Cuckoo Mansion of Despair" by Gerardo Perez and Adam Wardell

Use no scoring.
Use slow route-finding.

A person can be alive or dead.
A person is usually alive.

A room can be counted or uncounted.
A room is usually uncounted.

A person can be free or locked-in.
The player is free.
The player is in the Mansion Grounds.
Trapped is a scene. Trapped begins when the player is locked-in for the first time. [after owner stops talking to you].
Trapped ends when the player is free for the second time.
A window is a kind of door. A window is usually locked. A window is usually closed.

When Trapped begins:
	say "Suddenly, all of the windows are slammed shut and barricaded.[line break]You hear a click on the front door.[line break] As you stand there, trying to collect yourself, another loud bang shakes you up. Someone or something is coming upstairs. Something big.";
	now the front door is closed;
	now the front door is locked;
[Lock all doors to living room or lock just the front door, start beast movement algorithmn]

When Trapped ends:
	end the story saying "You finally make your escape from this crazy place.";

A thing can be breakable or unbreakable. A thing is usually unbreakable.
A thing can be broken or unbroken. A thing is usually unbroken. 
A thing can be heavy or light. A thing is usually light.
A thing can be seen or unseen. A thing is usually unseen.
A gem is a kind of thing.
The black gem is a gem.

A key is a kind of thing. The purple key is a key. The description is "A purple key of some sort." [cellar door key]
The card key is a key. The description is "A black and yellow striped card key. There is no other labeling."[control room machine]
The control key is a key. The description is "A key marked 'Control Room'".[the beast carries the key]

The Mansion Grounds is a room. "[if the player is in the mansion grounds for the first time]Some initial description of the grounds goes here![end if]".

The front door is a door. The front door is inside from the mansion grounds and outside from the living room. The front door is lockable and unlocked.

Every turn:
	if the living room is visited and the living room was not visited:
		now the player is locked-in;

The Living Room is a room. "[if the player is in the living room for the first time]What used to be such a welcoming room is now the last place you want to be in. Your first instinct is to explore the rest of the mansion to try and find a way out, or at least avoid whatever is approaching.[line break][end if]There is a small table in the middle of the room, next to the couch. The fireplace burns."
The couch is scenery in the living room.
The living room table is scenery in the living room. The description is "There's nothing on there, although a nearby dangling phone wire tells you that there used to be a phone here."
The phone wire is scenery in the living room.
The fireplace is an open container in the living room. The fireplace is scenery.The description is "You peek into the fireplace, but there is nothing of interest."
A painting of a bee is in the living room. The description of the painting of a bee is "A vividly colored painting of a bumblebee."

Instead of inserting something into the fireplace:
	say "Perhaps you shouldn't.";

The Basement is a room. "[if the player is in The Basement for the first time]A huge basement that gives off some bad vibes and a sickly smell. You hope for some clues. Anything that can help you escape from this foul prison. The first thing you notice is large steel cage, its door swong wide open. [end if]The cage rests in a corner. You can also see a damaged old painting on the wall and a table with various medical utilities."
The basement table is scenery in the basement. The description is "Who knows why this stuff is down here.  The stains of blood inside the cage are definitely related though."
There are jars of fluid, syringes, chemicals, and some surgical tools on the table.  The surgical tools are heavy. The jars are heavy.

The cage is scenery in the basement. The description of the cage is "This is surely where that monster is kept. The bars of the cage seem to be heavily reinforced, yet somehow damaged. The cage's opening doesn't seem to use a traditional lock. It looks electronic, but there is no way to input a combination."

blood is part of the cage. The description of the blood is "Looks a few days old."
The cage lock is part of the cage. The description of the cage lock is "A steel black box. Must be controlled remotely."
A scenic painting is in the basement. The description of the scenic painting is "A painting of the deep blue sea melding with a beautiful red sunset. It sure makes you miss the outside world."
The cellar door is a lockable locked door. It is northeast of the basement and south of the Field. The description is "Freedom is close. You can feel the fresh cool wind blowing in. However, there is a sturdy lock preventing you from opening the door." 
The purple key unlocks the cellar door.

[Note in the world index that rooms  are automatically assigned a floor if they are have a connection to one of these two rooms]
The First Floor Corridor is a room. The basement stairs are an open unopenable door. The initial appearance is "You can see the basement stairs here." The basement stairs are below the first floor corridor and above the basement.

The Second Floor Corridor is a room. The upper stairs are an open unopenable door. The initial appearance is "You can see the second floor stairs here." The upper stairs are above the first floor corridor and below the second floor corridor.

The Study is a room. "You can tell the Doctor spends much of his time here. There is a bookshelf, a small desk covered with neat piles of papers, and a chair. You can also see a cabinet with [if the cabinet is broken]broken [end if]glass doors. [if the cabinet contains a yellow gem]Something is faintly reflecting light in there.[end if]".
The bookshelf is scenery in the study. The description is "It is full of non-fiction books."
The books are part of the bookshelf.
Instead of examining the books, say "There's no time for that."
The glass cabinet is a locked, openable, breakable , scenery, container in the study. The description of the cabinet is "[if the cabinet is unbroken]There's a  small lock on the cabinet, although the doors seem to be made of fragile glass.[otherwise]The lock must have been for decoration."
There is a gem called the yellow gem in the cabinet. The description of the yellow gem is "A beautiful yellow gem."
The desk is scenery in the study.  The description of the desk is "Lots of business documents and paperwork. The desk has a drawer."
The drawer is part of the desk. The drawer is a closed openable container. 
A journal is in the drawer. The description of the journal is "You read the latest entry 'I never got around to sending his wife that letter. I just couldn't bear it, and left the matter as it was. The repercussions for letting the world know would be too great.'"

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

The Master Bedroom is a room. "There is a rather large bed in the room. The room also has a closet."
The bed is scenery in the master bedroom. The description of the bed is "It looks untouched. You doubt if that madman even sleeps."
The closet is an open enterable scenery container in the master bedroom. 
The statue is in the master bedroom. The description of the statue is "A life-size statue of a man. [if the photograph is not seen]He doesn't remind you of any historical figures or anyone like that.[ otherwise]This is definitely the man in that photograph. Just who is this?[end if]He shows a serene smile as he holds out both hands. You notice something peculiar about this statue's chest." The initial appearance is "There is a statue resting a the corner of the room."
The statue's chest is part of the statue. The statue's chest has a number called capacity. The capacity of the chest is 2. The description of the statue's chest is "[if the number of things that are part of the  statue's chest is 0]On its right chest are two octagonal shaped indentations that look like they might have held something.[otherwise]Right now it holds: [list of things that are part of the statue's chest][end if]." 
The statue's hands are a supporter. The hands are part of the statue.

Bathroom One is a room.  "A standard bathroom with a shower, toilet and sink. There is a large mirror with a fancy border near the sink." 
The toilet is scenery in bathroom one. The sink is scenery in bathroom one.
The mirror is a breakable thing in Bathroom One. The mirror is scenery. The mirror has a number called capacity. The capacity of the mirror is 1. The description of the mirror is "Looks expensive. [if something is part of the mirror]This mirror is embedded with a [list of things that are part of the mirror] that appears to be removable."
The red gem is a gem. The red gem is part of the mirror.

Bathroom Two is a room. "There is nothing of interest here."

The Guest Room is a room. "This room looks like it has never been used. There are cobwebs everywhere.  A single bed is set up in the room, as well as a dresser."
The dresser is scenery in the guest room. The dresser is a closed, openable container. The description is "With drawer fronts crafted from reclaimed saal wood, the Stria Dresser brings rustic charm to the bedroom. In a former life, the wood was used in Indian railway trestles. Today, it's prized for its natural imperfections and character; no two pieces are exactly the same." 
The dresser contains an envelope. The envelope is a closed openable container. 
Instead of examining the envelope when the envelope is closed, say "It is sealed. There is nothing written on it."
After opening the envelope for the first time, say "What you find inside diminishes your hopes of escaping. There are several identification cards of people from all over the country. They must have been lured in by this maniac and fed to that beast. This is probably his way of keeping accolades."
Mary's ID is in the envelope. The description is "Mary Schweller[line break]Date of Birth: 02-24-1953."
Frank's ID is in the envelope. The description is "Frank Zappa[line break]Date of Birth: 12-21-1940."
Jonathan's ID is in the envelope. The description is "Jonathan Maxwell[line break]Date of Birth: 08-12-1948."
Andrew's ID is in the envelope. The description is "Andrew Kong[line break]Date of Birth 03-06-1950."
The blue gem is a gem. The blue gem is in the dresser.

The cobwebs are scenery in the guest room.
There is a framed print in the guest room. The description is "[italic type]'Mi casa es su casa.'[roman type]".

The kitchen is a room. "A large kitchen and dining combination room. There is a fine stone-top counter separating the kitchen from the rest of the room. Dish cabinets with nothing but kitchen utensils inside line the place. In the northeast direction is the pantry."The printed name is "Kitchen & Dining Room". Understand "dining room" as the kitchen.
The dining table is scenery in the kitchen. The dining table is a supporter.
The stove is scenery in the kitchen. 
The dish cabinets are scenery in the kitchen. The dish cabinets are transparent, closed, openable containers.  
There are kitchen utensils in the dish cabinets. There are dishes in the dish cabinets.
The kitchen counter is scenery in the kitchen. The description is "What a nice polish."
There is fake fruit on the dining table. The description of the fake fruit is "It's plastic fruit. An unreasonable rage fills your body."
The refrigerator is scenery. The refrigerator is a closed openable container.
Instead of taking the kitchen utensils, say "It would be better to leave these here."
Instead of taking the dishes, say "It would be better to leave these here."

[The pantry should not be placed randomly. It uses northeast in order to not conflict with room placement algorithmn]
A box is a kind of container. A box can be in-place or dislocated.
The Pantry is northeast of the kitchen. "A pantry that receives little light. There is a rack that holds nonperishable food."
There are food boxes in the pantry. Food boxes are a box. The food boxes are heavy. The food boxes are in-place. The initial appearance is "At the end of the room are a few large boxes." The description of the boxes is "These boxes hold nothing of interest."
The rack is scenery in the pantry. The rack is an open container. It contains nonperishable food.
Instead of taking nonperishable food, say "You have no interest in eating right now."
Understand "box" as boxes.
Instead of examining or opening the food boxes when the boxes are in-place:
	say "They contain more food stuff. As you frustratedly rattle the box flaps, you notice something about the wall. From this close range, you can see hinges peering out from behind the boxes. [paragraph break]You push the boxes aside, revealing a flap door that is more than big enough for you to enter.";
	now the food boxes are dislocated;
	now the secret passage is described;

The secret passage is a door. The secret passage is east of the pantry and southwest of the Control Room. The secret passage is undescribed.  The description of the secret passage is "The door is painted the same color as the walls. The passage seems big enough for a single person to crawl through."

Before going through the secret passage:
	if the food boxes are dislocated:
		say "You maneuver yourself through the dusty two-way path. It takes you a few minutes to reach the other room."; 
	
Understand "flap door" as the secret passage.
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
		say "You hear a loud slamming all around you. Great relief fills your spirit. You should head to the front door in the living room.";
		now the front door is open;

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

The Den is a room. "The den is comfortably furnished."
The bear head is in the den. It is fixed in place. The bear head has a number called capacity. The capacity of the bear head is 1. The initial appearance is "There is a a mount of a bear head on the wall." The description is "So this man is a hunter. [if the player has been in the armory]That explains all of the guns back there. [end if]The bear looks frightening, but you'd much rather have one of these lurking in the mansion than that monster. [if the black gem is part of the bear head]A black gem serves as a substitute for the bear's nose."
The black gem is part of the bear head.
Understand "bear nose" as black gem.
Understand "mount" as bear head.

Bedroom C is a room.
The ottoman is a heavy closed openable container in bedroom c. The initial appearance is "An ottoman is placed beside the bed." The description is "An ottoman made of rich leather."
The ottoman contains a photograph. The description of the photograph is "A younger Dr. Redrum standing next to a man. [if the statue is seen]His companion looks remarkably like the statue in the master bedroom. [end if]A lush rainforest surrounds them."
The ottoman contains blank paper. 
The bedroom-c bed is scenery.

Bedroom B is a room. "It looks like this room was never set up.  There is no furniture, just bare, empty walls."
The walls are scenery in Bedroom B. The description is "Tell me your secrets, wall."

The Narrow Hallway First is a room. "A peculiar black door is connected to this hallway." The printed name is "Narrow Hallway (First Floor)". 
The metal door is a locked lockable door. The metal door is northwest of the narrow hallway first and east of the Control Room.  The description of the metal door is "I need a key for this."
The control key unlocks the metal door.

The Narrow Hallway Second is a room. The printed name is "Narrow Hallway (Second Floor)".

The Studio is a room. "A real painter's studio." 
The unfinished canvas is in the studio. The initial appearance is "There is an unfinished canvas lying on the ground." The description is "It's starting to take form. From what you can make out, it looks like some sort of tropical landscape."

The Utility Room is a room. "It houses a laundry machine and other home maintenance tools."
The laundry machine is scenery in the utility room. The laundry machine is a closed openable container.  The description is "It looks like the latest front-loading model."
The laundry machine contains blood-stained clothes. The description of the clothes is "Dried stiff. Just what goes on in this place?"

The Conference Room is a room. "A small conference room with nothing but an empty table and chairs."
The conference table is scenery in the conference room. 
The chairs are scenery in the conference room. Understand "chair" as chairs.

The Excercise Room is a room. "There are is sole yoga mat on the ground. This place would be suitable for meditation and prayer."
[sorry, you can neither meditate nor pray, as the context would suggest]
The yoga mat is scenery in the excercise room. 

The Ballroom is a room.  "A grand ballroom that now seems like a relic of the past. Nothing here but empty space."

The Field is a room. "You are outside of the mansion."

After entering the field: [from cellar door]
	now the player is free;
After entering the Mansion Grounds for the second time:
	now the player is free;
[Rules]
[def the beast is near player when mandist is 1]
Instead of taking something heavy:
	say "That's too heavy for you to carry.";
Definition: a direction (called thataway) is viable if the room thataway from the location is a room.
Every turn:
	if the player is not in the pantry:
		say "From here you can go [list of viable directions].";
	otherwise:
		say "From here you can go southwest.";
Carry out examining a thing: 
	now the noun is seen.
	
After examining a container:
	if the noun is closed:
		say "The [noun] is closed."
[for debugging]
Teleporting is an action applying to one visible thing. Understand "teleport to [any room]" as teleporting. Carry out teleporting: move the player to the noun.

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
		say "The statue drops something into its hands.";
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


[Some Game Rules:
One shot severely wounds the beast, and promptly after it moves to another room. Two shots kills it.
[using an action ticks beast algorithm, moving from room to room causes a bigger step]

[Premise, the beast walking around is the man's best friends. He feels the best he could do was at least feed him]
[The beast is sick and old, and starving, so it is not very agile]
[if running away for first time, jump player to a random room]
[maybe the player can hide under stuff in certain rooms]
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
placeholder		Living Room		placeholder
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
Connecticut, New York, New Jersey, Pennsylvania, Delaware, Maryland, Virginia, and Carolina are rooms.

Table 3 - First Floor Available Rooms
name
Guest Room
Bathroom One
Kitchen
Armory
Den
Narrow Hallway First
Master Bedroom
Utility Room
Conference Room
Ballroom

Table 4 - Second Floor Available Rooms
name
Bedroom C
Bedroom B
Bathroom Two
Narrow Hallway Second
Studio
Excercise Room
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
		if _2 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 3;
			while there is no name in row currIndex of Table 3:
				now currIndex is a random number from 1 to the number of rows in Table 3;
			now currRoom is name in row currIndex of Table 3;
			now _2 entry is currRoom;
			blank out name in row currIndex of Table 3;
		if _3 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 3;
			while there is no name in row currIndex of Table 3:
				now currIndex is a random number from 1 to the number of rows in Table 3;
			now currRoom is name in row currIndex of Table 3;
			now _3 entry is currRoom;
			blank out name in row currIndex of Table 3;
	repeat through Table 2:
		if _1 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 4;
			while there is no name in row currIndex of Table 4:
				now currIndex is a random number from 1 to the number of rows in Table 4;
			now currRoom is name in row currIndex of Table 4;
			now _1 entry is currRoom;
			blank out name in row currIndex of Table 4;
		if _2 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 4;
			while there is no name in row currIndex of Table 4:
				now currIndex is a random number from 1 to the number of rows in Table 4;
			now currRoom is name in row currIndex of Table 4;
			now _2 entry is currRoom;
			blank out name in row currIndex of Table 4;
		if _3 entry is placeholder:
			now currIndex is a random number from 1 to the number of rows in Table 4;
			while there is no name in row currIndex of Table 4:
				now currIndex is a random number from 1 to the number of rows in Table 4;
			now currRoom is name in row currIndex of Table 4;
			now _3 entry is currRoom;
			blank out name in row currIndex of Table 4;
	[CONNECT ROOMS, BOTTOM FLOOR]
	[1,1]
	now currRoom is _1 in row 1 of table 1;
	now eastRoom is _2 in row 1 of table 1;
	now southRoom is _1 in row 2 of table 1;
	now eastRoom is mapped east of currRoom;
	now southRoom is mapped south of currRoom;
	[1,2]
	now currRoom is _2 in row 1 of table 1;
	now westRoom is _1 in row 1 of table 1;
	now eastRoom is _3 in row 1 of table 1;
	now southRoom is _2 in row 2 of table 1;
	now westRoom is mapped west of currRoom;
	now eastRoom is mapped east of currRoom;
	now southRoom is mapped south of currRoom;
	[1,3]
	now currRoom is _3 in row 1 of table 1;
	now westRoom is _2 in row 1 of table 1;
	now southRoom is _3 in row 2 of table 1;
	now westRoom is mapped west of currRoom;
	now southRoom is mapped south of currRoom;
	[2,1]
	now currRoom is _1 in row 2 of table 1;
	now northRoom is _1 in row 1 of table 1;
	now eastRoom is _2 in row 2 of table 1;
	now southRoom is _1 in row 3 of table 1;
	now northRoom is mapped north of currRoom;
	now eastRoom is mapped east of currRoom;
	now southRoom is mapped south of currRoom;
	[2,2]
	now currRoom is _2 in row 2 of table 1;
	now northRoom is _2 in row 1 of table 1;
	now westRoom is _1 in row 2 of table 1;
	now northRoom is mapped north of currRoom;
	now westRoom is mapped west of currRoom;
	[2,3]
	now currRoom is _3 in row 2 of table 1;
	now northRoom is _3 in row 1 of table 1;
	now southRoom is _3 in row 3 of table 1;
	now northRoom is mapped north of currRoom;
	now southRoom is mapped south of currRoom;
	[3,1]
	now currRoom is _1 in row 3 of table 1;
	now northRoom is _1 in row 2 of table 1;
	now southRoom is _1 in row 4 of table 1;
	now northRoom is mapped north of currRoom;
	now southRoom is mapped south of currRoom;
	[3,2]
	now currRoom is _2 in row 3 of table 1;
	now eastRoom is _3 in row 3 of table 1;
	now southRoom is _2 in row 4 of table 1;
	now eastRoom is mapped east of currRoom;
	now southRoom is mapped south of currRoom;
	[3,3]
	now currRoom is _3 in row 3 of table 1;
	now northRoom is _3 in row 2 of table 1;
	now westRoom is _2 in row 3 of table 1;
	now southRoom is _3 in row 4 of table 1;
	now northRoom is mapped north of currRoom;
	now westRoom is mapped west of currRoom;
	now southRoom is mapped south of currRoom;
	[4,1]
	now currRoom is _1 in row 4 of table 1;
	now northRoom is _1 in row 3 of table 1;
	now eastRoom is _2 in row 4 of table 1;
	now northRoom is mapped north of currRoom;
	now eastRoom is mapped east of currRoom;
	[4,2]
	now currRoom is _2 in row 4 of table 1;
	now northRoom is _2 in row 3 of table 1;
	now westRoom is _1 in row 4 of table 1;
	now eastRoom is _3 in row 4 of table 1;
	now northRoom is mapped north of currRoom;
	now westRoom is mapped west of currRoom;
	now eastRoom is mapped east of currRoom;
	[4,3]
	now currRoom is _3 in row 4 of table 1;
	now northRoom is _3 in row 3 of table 1;
	now westRoom is _2 in row 4 of table 1;
	now northRoom is mapped north of currRoom;
	now westRoom is mapped west of currRoom;
	[CONNECT ROOMS, TOP FLOOR]
	[1,1]
	now currRoom is _1 in row 1 of table 2;
	now eastRoom is _2 in row 1 of table 2;
	now southRoom is _1 in row 2 of table 2;
	now eastRoom is mapped east of currRoom;
	now southRoom is mapped south of currRoom;
	[1,2]
	now currRoom is _2 in row 1 of table 2;
	now westRoom is _1 in row 1 of table 2;
	now eastRoom is _3 in row 1 of table 2;
	now southRoom is _2 in row 2 of table 2;
	now westRoom is mapped west of currRoom;
	now eastRoom is mapped east of currRoom;
	now southRoom is mapped south of currRoom;
	[1,3]
	now currRoom is _3 in row 1 of table 2;
	now westRoom is _2 in row 1 of table 2;
	now southRoom is _3 in row 2 of table 2;
	now westRoom is mapped west of currRoom;
	now southRoom is mapped south of currRoom;
	[2,1]
	now currRoom is _1 in row 2 of table 2;
	now northRoom is _1 in row 1 of table 2;
	now southRoom is _1 in row 3 of table 2;
	now northRoom is mapped north of currRoom;
	now southRoom is mapped south of currRoom;
	[2,2]
	now currRoom is _2 in row 2 of table 2;
	now northRoom is _2 in row 1 of table 2;
	now southRoom is _2 in row 3 of table 2;
	now northRoom is mapped north of currRoom;
	now southRoom is mapped south of currRoom;
	[2,3]
	now currRoom is _3 in row 2 of table 2;
	now northRoom is _3 in row 1 of table 2;
	now southRoom is _3 in row 3 of table 2;
	now northRoom is mapped north of currRoom;
	now southRoom is mapped south of currRoom;
	[3,1]
	now currRoom is _1 in row 3 of table 2;
	now northRoom is _1 in row 2 of table 2;
	now southRoom is _1 in row 4 of table 2;
	now northRoom is mapped north of currRoom;
	now southRoom is mapped south of currRoom;
	[3,2]
	now currRoom is _2 in row 3 of table 2;
	now northRoom is _2 in row 2 of table 2;
	now southRoom is _2 in row 4 of table 2;
	now northRoom is mapped north of currRoom;
	now southRoom is mapped south of currRoom;
	[3,3]
	now currRoom is _3 in row 3 of table 2;
	now northRoom is _3 in row 2 of table 2;
	now southRoom is _3 in row 4 of table 2;
	now northRoom is mapped north of currRoom;
	now southRoom is mapped south of currRoom;
	[4,1]
	now currRoom is _1 in row 4 of table 2;
	now northRoom is _1 in row 3 of table 2;
	now eastRoom is _2 in row 4 of table 2;
	now northRoom is mapped north of currRoom;
	now eastRoom is mapped east of currRoom;
	[4,2]
	now currRoom is _2 in row 4 of table 2;
	now northRoom is _2 in row 3 of table 2;
	now westRoom is _1 in row 4 of table 2;
	now eastRoom is _3 in row 4 of table 2;
	now northRoom is mapped north of currRoom;
	now westRoom is mapped west of currRoom;
	now eastRoom is mapped east of currRoom;
	[4,3]
	now currRoom is _3 in row 4 of table 2;
	now northRoom is _3 in row 3 of table 2;
	now westRoom is _2 in row 4 of table 2;
	now northRoom is mapped north of currRoom;
	now westRoom is mapped west of currRoom;
	[Now let's map it?]
	
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

The beast is a person.
When play begins:
	now currRoom is _3 in row 1 of table 2;
	now the beast is in currRoom;

Table 99 - Queue (R - a room)
name
placeholder
with 50 blank rows

[inform 7 pathfinding is broken, implement dfs]
queueFront is a number that varies;
a boolean is a kind of thing. a boolean can be affirmative or negative.
foundspace is a boolean.
wasteofspace is a boolean.

[enqueue a room]
To enqueue (R - a room):
	now foundspace is negative;
	now wasteofspace is negative;
	if name in row 1 of table 99 is placeholder:
		blank out name in row 1 of table 99;
		now queueFront is 1;
	repeat with N running from queueFront to 99:
		if there is name in row N of table 99:
			[i know this is bad, but need to invert this if]
			now wasteofspace is affirmative;
		otherwise:
			if foundspace is negative:
				now name in row N of table 99 is R;
				now foundspace is affirmative;
	if foundspace is negative:
		repeat with N running from 1 to queueFront:
			if there is name in row N of table 99:
				now wasteofspace is affirmative;
			otherwise:
				if foundspace is negative:
					now name in row N of table 99 is R;
					now foundspace is affirmative;

[dequeue a room]
To decide which room is dequeue:
	now currRoom is name in row queueFront of table 99;
	blank out name in row queueFront of table 99;
	now queueFront is queueFront + 1;
	decide on currRoom;
	
[queue isEmpty]
To decide if isEmpty:
	if there is name in row queueFront of table 99:
		if name in row queueFront of table 99 is placeholder:
			decide on true;
		otherwise:
			decide on false;
	otherwise:
		decide on true;
		
To decide if isNotEmpty:
	if isEmpty:
		decide on false;
	decide on true;

bfsRoom is a room that varies;

[To decide which room is the best stalk direction from (R - a room):
	now R is counted;
	enqueue R;
	while isNotEmpty:
		now bfsRoom is dequeue]
			
[the cludgy thing we've done instead of pathfinding, which we couldn't get finished]
Every turn:
	if the player is locked-in:
		if the beast is alive:
			[move the beast to the best route from the beast to the player;]
			now currRoom is the location of the player;
			move the player to the location of the beast, without printing a room description;
			move the beast to a random adjacent room;
			move the player to currRoom, without printing a room description;
			