Boilerplate by Ben Scott begins here.

Chapter 2 - Extended Classes

Section 1 - Player

The player forename is some text that varies.
The player name is some text that varies.

Gender is a kind of value. The genders are masculine, feminine, and unknown.
Understand "male", "man", "boy" or "m" as masculine.
Understand "female", "woman", "girl" or "f" as feminine.
A person has a gender. The gender of the player is unknown.

The backpack is a player's holdall.
The backpack is wearable.
Understand "satchel/pack/bag/bac/back/backp/backpa/backpac" as backpack.
The carrying capacity of the player is 8.

Instead of examining the player:
	say "You look like you need some rest. You're sore, and you have some serious bags under your eyes. But all that can be seen to later[if the player wears something]. You are wearing [a list of things worn by the player][end if]."

Instead of rubbing the player:
	say "There will be time to clean up later, when the situation here is not so dire."
Instead of searching the player, try taking inventory.

To decide whether collecting names:
	if the command prompt is "What will your name be?  ", yes; no.

To decide whether the gender of the player is unknown:
	if the command prompt is "Are you male or female?  ", yes; no.

Instead of looking when collecting names: do nothing.
Rule for printing the banner text when collecting names: do nothing.
Rule for constructing the status line when collecting names: do nothing.

Instead of looking when the gender of the player is unknown: do nothing.
Rule for printing the banner text when the gender of the player is unknown: do nothing.
Rule for constructing the status line when the gender of the player is unknown: do nothing.

Section 2 - Doors

[The initial appearance of a door is usually "Nearby [an item described] leads [item described direction]." The description of a door is usually "[if open]It stands open[otherwise]It is closed[end if][if locked] and locked[otherwise] and unlocked[end if]."

	To say (item - a thing) direction:
	let place be a random room;
	let the place be the other side of the item;
]
Instead of attacking a closed door: say "[The noun] reverberates but does not open."
Understand "knock on [something]" or "knock [something]" as attacking.  Understand the commands "bang" and "tap" and "rap" as "knock".

Before printing the name of an open door (called target) when looking or going:
	if the target is a staircase, do nothing;
	otherwise say "open ".

To decide what direction is the way through (threshold - a door):
    let far side be the other side of threshold;
    let way be the best route from the location to the far side, using even locked doors;
    if way is a direction, decide on the way;
    decide on inside.

Instead of looking under something which is carried by the player:
	say "Since you are holding [the noun], it stands to reason that nothing of interest could be concealed beneath."

Instead of looking under something which is worn by the player:
	say "Underneath there is only yourself."

Instead of looking under a door:
	say "[The noun] meets the floor with very little space to spare."

Section 3 - Military Time

To say (relevant time - a time) as 24h time:
    let H be the hours part of relevant time;
    let M be the minutes part of relevant time;
    say "[H]:[if M is less than 10]0[end if][M]".

Section 4 - Other

Definition: a direction (called thataway) is viable if the room thataway from the location is a room.

Instead of going nowhere:
	let count of exits be the number of viable directions;
	if the count of exits is 0, say "You're trapped." instead;
	if the count of exits is 1, say "The only way out is [list of viable directions].";
	otherwise say "You can only go [list of viable directions]."

A floor is a kind of thing. Before putting something on a floor:
	try dropping the noun instead. A floor is always scenery.
	Instead of looking under a floor: say "No really, try that. Tell me how it goes."
	Understand "floor" or "ground" or "bottom" as a floor.

Section 5 - Lights

Rule for printing the announcement of light: say "Let there be light."

Section 6 - Sounds

A thing has some text called sound. The sound of a thing is usually "silence".

Carry out listening to something:
	if in darkness, say "The [sound of the noun] sounds like [a noun].";
	otherwise say "From [the noun] you hear [the sound of the noun]."

Definition: a thing is audible if the sound of it is not "silence".

Chapter 3 - Class Definitions

Section 1 - Compass Rose

To say rose (way - a direction):
	let place be the room way from the location;
	if the place is a room, say "[if the place is unvisited][end if][way abbreviation]"; otherwise say "[way spacing]";

To say (way - a direction) abbreviation:
	choose row with a chosen way of way in the Table of Various Directions;
	say abbrev entry.

To say (way - a direction) spacing:
	choose row with a chosen way of way in the Table of Various Directions;
	say spacing entry.

Table of Various Directions
chosen way	abbrev	spacing
up	"U   "	"    "
northwest	"NW"	"  "
north	" N "	"   "
northeast	"NE"	"  "
east	" E"	"  "
west	"W "	"  "
southeast	"SE"	"  "
south	" S "	"   "
southwest	"SW"	"  "
down	"D   "	"    "

To say top rose:
	say "[rose up][rose northwest][rose north][rose northeast]".

To say middle rose:
	say "    [rose west] . [rose east]";

To say bottom rose:
	say "[rose down][rose southwest][rose south][rose southeast]".

Table of Status Bar
left    	central 		right
" [player name]"       	"Vividity"	  	"[top rose]"
" [if in darkness]Darkness[otherwise][location][end if]"        	" "	  	"[middle rose]"
" [time of day as 24h time]"	" "		"[bottom rose]"

Rule for constructing the status line:
	fill status bar with Table of Status Bar;
	rule succeeds.

Section 2 - Taxonomy

A plant is a kind of thing.
A plant is either identified or unidentified. A plant is usually unidentified.
Understand "leaf" or "shrub" or "flora" as a plant.
Understand "plants" or "florae" or "floras" as the plural of plant.
The description of a plant is usually "[the noun] is green. It has leaves. Move on with your life."

A herb is a kind of plant that is edible.
Understand "flower" or "weed" or "ingredient" as herb.
Understand "herbs" or "flowers" or "weeds" or "ingredients" as the plural of herb.
The description of a herb is usually "You recognize [the noun] as a potentially useful herb, but you aren't sure what it is. Perhaps you can find someone who does."

nightshade is a kind of herb. The printed name of nightshade is "[if the noun is identified]nightshade sprig[else]mystery flower".
The description is usually "[if the noun is identified]This is nightshade, a medicinal herb containing a very powerful psychostimulant. It is used in elixirs of speed. [end if]The flowers are a brilliant shade of purple, their petals fade to black around the edges. The leaves are quite round. They seem to dart around, as if the wind is pushing them faster. [if the noun is unidentified]There are quite a few varieties of this plant that you've heard about, and while some are known to improve concentration and quell appetite, some varieties are more potent, and possibly dangerous. You don't know enough about botany to really tell if these flowers can kill you. Perhaps you can find someone who does.[end if]".
Instead of eating the Nightshade:
	say "[italic type]You eat one of the flowers. It's sweetly salty, and tingles your tongue. Before you're able to swallow all the petals, your heartrate doubles, and your mouth gets dry. You stumble around a bit.[roman type]";
	The nightshade metabolizes in 3 turns from now.
At the time when the nightshade metabolizes:
	say "[italic type]You're elated now, and you're getting uncomfortably tachycardic.[roman type]";
	the nightshade incapacitates in 2 turns from now.
At the time when the nightshade incapacitates:
	say "[italic type]You fall to your knees, twitching. Your heart feels like it's deflating, sloppily pushing blood all over the place, and skipping more and more beats. You tingle and twitch as your entire body is deprived of oxygen. You struggle back to your feet.[roman type]";
	the nightshade kills in 1 turns from now;
At the time when the nightshade kills:
	end the story saying "[italic type]Your heart rolls to a stop as you slip into death, your whole body humming.[roman type]".

A tree is a kind of plant.
Understand "arbor" or "conifer" or "timber" as tree.
Understand "trees" or "arbors" or "conifers" or "timbers" as the plural of tree.
The description of a tree is usually "'I spy... something... green.' 'Tree?' 'ahh..' 'Ok, my turn. I spy... eh, a vertical log-' 'Tree.' 'Yeah.'";

A bed is a kind of supporter. A bed is always enterable. A bed is usually fixed in place. The description of a bed is usually "Unrumpled: the service keeps them neat and tidy." Understand "sheets" or "sheet" or "pillow" or "pillows" as the bed. Instead of looking under a bed, say "It is clean beneath as above."

A staircase is a kind of door. A staircase is usually open. A staircase is seldom openable. Understand "stairs" or "stair" or "staircase" as a staircase. Understand "upstairs" or "downstairs" as a staircase.
Instead of climbing a staircase: try entering the noun.

Understand "go down [staircase]" as climbing.
Understand "go up [staircase]" as climbing.

A fluid container is a kind of thing. A fluid container can be empty or full. After printing the name of a full fluid container while listing contents: say " (full)". After printing the name of an empty fluid container while listing contents: say " (empty)".

Part 2 - Main

The former location is a room that varies.
First carry out going rule: Now the former location is the location.
Understand "go back" as retreating. Understand "b" or "back" or "return" or "retreat" as retreating.
Retreating is an action applying to nothing.
Carry out retreating:
	let way be the best route from the location to the former location, using doors;
	if way is a direction, try going way;
	otherwise say "You can't see an open way back."
Instead of retreating when the former location is the location: say "You haven't gone anywhere yet."

After going to The Gallery, display the boxed quotation
	"A hallowed thing— - to drop a life -
	Into the purple well— -
	Too plummetless— - that it return— -
	Eternity— until— -
	F 307 (1862) 271";



Boilerplate ends here.
