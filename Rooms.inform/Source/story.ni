"Rooms" by Gerardo Perez

Use no scoring.

A person can be free or locked-in.
The player is locked-in.

Trapped is a scene. Trapped begins when the player is locked-in. [after owner stops talking to you]

When Trapped begins:
	say "Suddenly, all of the windows are slammed shut and barricaded.[line break]You hear a click on the front door.[line break] As you stand there, trying to collect yourself, another loud bang shakes you up. Someone or something is coming upstairs. Something big.";
[Lock all doors to living room or lock just the front door, start beast movement algorithmn]

[The steps running down to the basement should be attached to a certain room]
A thing can be breakable or unbreakable. A thing is usually unbreakable.
A thing can be broken or unbroken. A thing is usually unbroken. 
A gem is a kind of thing.

The Living Room is a room. "[if the player is in the living room for the first time]What used to be such a welcoming place is now the last place you want to be. It seems there is no way out of here. Your first instinct is to explore the rest of the mansion to try and find a way out.[line break][end if]There is a small table in the middle of the room, next to the couch. The fireplace burns."
The couch is scenery.
The living room table is scenery. The description is "There is no phone or anything on here that could help me find help."
The fireplace is scenery. The description is "Earlier you noticed the doctor discretely tossing something into the fireplace. You didn't think much of it before, but it might have been a key or something that could get you out of here."

The Basement is a room. "[if the player is in The Basement for the first time]A huge basement that gives off some bad vibes and a sickly smell. It seems like the most unlikely escape from this prison, but there must be some clues around. The first thing you notice is large steel cage, its door swong wide open. [end if]The cage rests in a corner. You can also see a damaged old painting on the wall, some old boxes from which a hint of moonlight seems to be peering in, and a table with various medical utilities."

The Basement is south of the foyer.

[There is a box in the basement. The box is pushable. The initial appearance is "A box rests in the corner."]
The cage is scenery. The description of the cage is "This is surely where that monster is kept. The bars of the cage seem to be heavily reinforced, yet somehow damaged. The cage's opening doesn't seem to use a traditional lock. It looks electronic, but there is no way to input a combination."
The cage lock is part of the cage.  The description of the cage lock is "A steel black box. Must be controlled remotely."
A painting is in the basement. The description of the painting is "A painting of the deep blue sea melding with a beatiful red sunset."

[psuedocode Instead of pushing boxes away say "You push the boxes away, revealing a path leading to the cellar door"]
[Cellar door: "Escape is close. You can feel the fresh cool wind blowing in. However, there is a sturdy lock preventing you from opening the door."] 
[after taking painting say "When picking up the painting you notice some text written on the back."]
[The back of the painting is part of the painting. The description is "Written on the painting is 'To my cherished comrade, {}. Please keep this close to our mutual friend, as he adores this color'."]

The Study is a room. "You can tell the Doctor spends much of his time here. There are two bookshelves, a small desk covered with neat piles of papers, and a chair. You can also see a cabinet with glass doors. [if the cabinet contains a yellow gem]Something is faintly reflecting light in there.[end if]".
The study is south of the basement. 
The glass cabinet is a locked, openable, breakable , scenery, container in the study. The description of the cabinet is "[if the cabinet is unbroken]There's a  small lock on the cabinet, although the doors seem to be made of fragile glass.[otherwise]'I guess the lock was just for decoration.'"
There is a gem called the yellow gem in the cabinet. The description of the yellow gem is "A beautiful yellow gem."
The desk is scenery in the study.  The description of the desk is "Lots of business documents and paperwork. The desk has a drawer."
The drawer is part of the desk. The drawer is a closed openable container. 
The black key is in the drawer.
A journal is in the drawer. The description of the journal is  "Words words words."

Understand "read [journal]" as examining.
Before examining the journal:
	if the player is not carrying the journal:
		try taking the journal;

The Armory is a room. "This room is lined with gun racks. Too bad they're all empty, as if the place had been robbed. There is also a cabinet to the left of the room and lots of ammo boxes strewn around."
Ammo boxes are in the armory. The description of the ammo boxes is "The only kinds I can find are shotgun and rifle ammo."
Instead of taking ammo:
	say "No point in taking these without the proper gun.";
	stop the action;

[Cabinet: There is some gun cleaning equipment. [Unless the player has taken the gun]In the corner though, lies a small pistol[endif].]

[Ammo boxes unfortunately are for shotguns and rifles only, no handgun ammo]

The Master Bedroom is a room. "There is a rather large bed in the room. Some things you could check are a dresser and a closet."
The bed is scenery. The description of the bed is "It looks untouched. I doubt that madman even sleeps."
The closet is an open enterable container. 
The statue is in the master bedroom. The description of the statue is "A life-size statue of a man. He shows a serene smile as he holds out both hands. You notice something peculiar about this statue's chest." The initial appearance is "There is a statue resting a the corner of the room."
The statue's chest is part of the statue. The statue's chest has a number called capacity. The capacity of the chest is 2. The description of the statue's chest is "[if the number of things that are part of the  statue's chest is 0]On its right chest are two octogonal shaped indentations that look like they might have held something.[otherwise]Right now it holds: [list of things that are part of the statue's chest][end if]." 

the master bedroom is south of the study.

[The man giving you the key represents this guy allowing you to leave.]

Bathroom One is a room.  "A standard bathroom with a shower, toilet and sink. There is a large mirror with a fancy border near the sink." 
The toilet is scenery. The sink is scenery.

the bathroom is north of the foyer.

The mirror is a breakable thing in Bathroom One. The mirror has a number called capacity. The capacity of the mirror is 1. The description of the mirror is "Looks expensive. [if something is part of the mirror]This mirror is embedded with a [list of things that are part of the mirror] that appears to be removable."
The red gem is a gem. The red gem is part of the mirror.

Bathroom Two is a room. "There is nothing of interest here."
[This room should be locked]
The Control Room is a room. 
[Have a switch that unbarricades windows and unlocks front door.]


The Guest Room is a room. "A typical bedroom. There ".
[this room is where the player learns of past victims]
The blue gem is a gem. The blue gem is in the guest room.
[-------------Actions----------------]
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
		say "There's already [capacity of the second noun] gems here. Try removing one of them.";
		stop the action;
Carry out gem-inserting:
	now the noun is part of the second noun;
	if the blue gem is part of the second noun and the red gem is part of the second noun:
		say "Put a key in room.";
Report gem-inserting:
		say "You insert [the noun] into [the second noun]. It fits perfectly.";

Instead of taking a gem that is part of something (called the holder):
	say "You remove [the noun] from [the holder].";
	now the player carries the noun;
Instead of inserting something into the statue's chest:
	try gem-inserting the noun in the chest instead.
Instead of inserting something into the statue:
	try gem-inserting the noun in the chest instead.
Instead of inserting something into the mirror:
	try gem-inserting the noun in the mirror instead.

[Some Game Rules:
One shot severely wounds the beast, and promptly after it moves to another room. Two shots kills it.
There is a large key dangling from the beast's neck. Thus, killing it eguarantees an escape through the front door.]


[using an action ticks beast algorithm, moving from room to room causes a bigger step]

[Premise, the beast walking around is the man's best friends. He feels the best he could do was at least feed him]
[The beast is sick and old, and starving, so it is not very agile]
[if running away for first time, jump player to a random room]
[maybe the player can hide under stuff in certain rooms]
[have a point in story where player finds out who person in statue is, affecting the description (5.5)]

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
]