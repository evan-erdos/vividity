
"Vividity" by Ben Scott.
The release number is 1. The story creation year is 2015. 
The story headline is "An exercise in adventure puzzles and overwriting". 
The story genre is "Science Fiction / Adventure".

Include Basic Screen Effects by Emily Short.
Include Basic Help Menu by Emily Short.
Include Locksmith by Emily Short.
Include Punctuation Removal by Emily Short.
Include Ordinary Room Description by Emily Short.
Include Boilerplate by Ben Scott.
[Include Plurality by Emily Short.]
[Include Automap by Mark Tilford.]
Use the serial comma and memory economy.

Chapter 1 - Vivid Beginnings

When play begins:
	display the boxed quotation "Vividity                                           ";
	show the current quotation;
	wait for any key;
	clear the screen.
	[pause the game;]

When play begins: say "Rosy mist departs around a falling man. An extravagant bit of kinematics closes his fate tightly, yet, all things considered, his fate was probably well-enough sealed already. The edge of the canyon's shadow dances along uneven crags, casting a sharp shadow between lines of scarlet and thulian, traced down through the cracks by the man crumpled into a outcropped ravine. Some of the onlookers squirmed at the sight, while others were quite a bit more moved by it. After too long, and after the catwalk was scrubbed down by the real heroes in this situation, the crowd began to thin. There was obviously nothing to be done for him, so many began to leave the platform in disgust or boredom. 

	One woman didn't leave. She stood, transfixed by the coral and mauve blood on the rocks, and the sunset of rainbows falling on the canyon. From that evening on, she had them glowing within her, she had his colors in her blood, too. From that evening on, varicolored palettes of light would race through her mind, the tones and shades of which she would keep for the rest of her days. Gentiana, getting impatient, prodded at her friend. 
	'Adaline, let's go.' 
Gentiana had given her more than enough time to get out of her trance, and it was getting late. 'Come on, Adaline, we have to go.' Adaline absentmindedly stumbled away with her, as a ragged moon began it's path up through the sky.";
	wait for any key; [pause the game. instead of these two]
	clear the screen.

[Player Survey Begin]
When play begins: Now the command prompt is "What will your name be?  ";
After reading a command when collecting names:
	now the player name is the substituted form of "[the player's command]" in title case;
	now the player forename is word number 1 in the player name;
	now the command prompt is "Are you male or female?  ";
	reject the player's command.
	
Instead of looking when collecting names: do nothing.
Rule for printing the banner text when collecting names: do nothing.
Rule for constructing the status line when collecting names: do nothing.

After reading a command when the gender of the player is unknown:
	if the player's command includes "[gender]":
		now the gender of the player is the gender understood;
		if the gender of the player is masculine, now the player is male;
		if the gender of the player is feminine, now the player is female;
		now the command prompt is "> ";	
		clear the screen;
		say "[paragraph break][paragraph break]"; [This is silly, but otherwise the screen clear takes the area title]
		move the player to the location;
		reject the player's command.
		
Instead of looking when the gender of the player is unknown: do nothing.
Rule for printing the banner text when the gender of the player is unknown: do nothing.
Rule for constructing the status line when the gender of the player is unknown: do nothing.
[Player Survey End]

The Terrace is a region. Seaside Cliff, Cliff's Edge, Forest Overlook, Outside Dwelling, Interior Dwelling, Road to the Canyon's Stairway, The Town of Harston, and Harold's Utility Store are in the Terrace.

Seaside Cliff is a room. "The seaside terrace is far enough above the patchy trees and dells to afford a remarkable view of the ocean and sky. A ragged moon dusts some drying marshes to the west, and to the northwest lies a cascade of lavender and mahogany flora, gushing from marble cliffsides.[if unvisited] A serene breeze rolls over the terrace and eddies overtop the northeast trees, which are almost flush with the plateau.[end if]".
The backpack is worn by the player.
The leaflet is here. "A leaflet is held down by a rock, an edge fluttering in the breeze." The description is "The leaflet is quite short, and has a tear along the top edge. It reads '... the most amazing territory ever seen by mortals. No computer should be without one! At the end is what looks like a serial number, 69105. Typical.'"

Cliff's Edge is southeast of Seaside Cliff. "There's enough of a wind coming up the edge of the cliff to lift a small animal. Looking down over the white and vaguely purple chalk, you see an isolated cove, locked on two sides by tall rocks. There is a sand dune in front of a ravine-like opening, which seems to run under the cliffs somewhere to the north." There are 5 flowers in Cliff's Edge. They are edible. "In a sandy depression at the edge of the cliff there is a cluster of flowers, wedged between grass and rock." The description is "[if we have not examined the flowers]The flowers are a brilliant shade of purple, their petals fade to black around the edges, and the leaves are quite round. They seem to dart around, as though the wind pushes them faster than anything else around. There are quite a few varieties of this plant that you've heard about, and while some are known to improve concentration and quell appetite, some varieties are more potent, and possibly dangerous. Perhaps it bears further investigation.[otherwise]You don't know enough about botany to really tell if these flowers can kill you. Perhaps you can find someone who does.[end if]". Understand "Nightshade/Mystery Flowers" as flowers. 
After examining the flowers for the second time: Now the printed name of the flowers is "mystery flowers".
Instead of eating the flowers:
	say "[italic type]You eat one of the flowers. It's sweetly salty, and tingles your tongue. Before you're able to swallow all the petals, your heartrate doubles, and your mouth gets dry. You stumble around a bit.[roman type]";
	Now the printed name of the flowers is "4 mystery flowers";
	[Now the flowers are nowhere;]
	The flowers metabolize in 3 turns from now.
At the time when the flowers metabolize:
	say "[italic type]You're elated now, and you're getting uncomfortably tachycardic.[roman type]";
	the flowers incapacitate in 2 turns from now.
At the time when the flowers incapacitate:
		say "[italic type]You fall over twitching. Your heart feels like it's deflating, sloppily sending blood all over the place, and skipping more and more beats. You tingle and twitch as your entire body is deprived of oxygen. You struggle back to your feet.[roman type]";
		the flowers kill in 1 turns from now;
		Instead of going anywhere: 
			say "You can't move, you're incapacitated.";
			reject the player's command.
At the time when the flowers kill:
		end the story saying "[italic type]Your heart rolls to a stop as you slip into death with your whole body humming.[roman type]".
		
Forest Overlook is southwest of Seaside Cliff. "At a gentle angle, the ocean-facing side of the plateau slides down to form a nice, shady spot beneath the trees. From here, the gargantuan arbors string all the way up above the raised rock of the terrace. There are tufts of branches almost within reach at the edge of the cliff.". A round fruit is here. "Down along the cliff's edge, one of the more colorful trees seems to have dropped some round fruits to the canyon's surface." It is edible. The description is "This strange fruit is almost spherical. It's slightly translucent, and it's fuzzy skin seems to opalescently bounce light around inside it. It sloshes about when you move it, and it seems to move unusually slowly."

Outside Dwelling is south of Seaside Cliff. "Halfway to the edge of the plateau is a small, dome-like dwelling, with some paths running between it and a small garden behind it, and another area downhill. It is noisily rusted around the rounded main roof, but the seaside wind has somewhat polished the east hemisphere." A porthole is here. It is a door. The porthole is inside from Outside Dwelling and outside from Interior Dwelling. Understand "door / hatch / entrance" as porthole. It is locked. "The front porthole appears to be locked. It is quite sturdy, and there is a sizeable wheel at it's center." The rails are here. They are fixed in place. "The pathways are girded by brass and iron railings, which are sturdily fastened to the herringbone pathways." [Instead of going west, try going inside.]

Interior Dwelling is a room. "The interior of the main room is quite cozy. It is lit dimly, with globes of light forming a lurid image of the inside." The desk is here. It is a supporter. It is fixed in place. "There is a metal-rimmed desk here, with some illegible papers strewn across it's surface.". The set of drafting compasses are on the desk. A dirty bed is here. It is a bed. "The bed is unkempt, and has no pillow. It is raised an unusual distance off the floor." [Instead of going east, try going outside. ]

Road to the Canyon's Stairway is northeast of Seaside Cliff. "By some wonder of igneous intrusion, the northern edge of the Terrace has a set of 6 stair-like stone batholiths, all following the Terrace's ragged edge. With one exception, they even descend in order. An amalgam of small shops and transportation businesses have made themselves right at home on the terrace surface, and a small residential sector spreads down to the first step."

The Town of Harston is north of Road to the Canyon's Stairway. "This little boomtown has dug itself into the hard sandstone surface of the Terrace. Most of the shops are brimming with life, and the stone streets have been worn to the bare rock by thick rubber wheels and the foot traffic of a very busy people. The stores to the east are so crowded that you'd likely be injured if you tried to buy something there, but the west end is quieter. There is a utilities shop to the west, a closed, nondescript shop to the southwest, and a cablecar service to the northwest." [The Utility Shop Door is a door. The Utility Shop Door is west of The Town of Harston and east of Harold's Utility Store. It is scenery. "The door is quite thin, considering the sorts of sandstorms that sometimes blow through here, but Harold doesn't seem too concerned."]

Harold's Utility Store is west of The Town of Harston. "A large, round man stands in a cacophony of fresh hiking supplies and tools which decrease in quality with the square of the distance from his admittedly long reach." A man called Harold is here. The indefinite article of Harold is "your local".
Every turn when the player can see Harold:
	if a random chance of 1 in 5 succeeds:
		say "Harold [one of]fidgets with a lantern's filament[or]busies himself with a new trinket[or]coughs a bit, and leans back in his squeaking chair[or]looks up at you for a moment, decides you aren't talking to him right now, and looks back down, muttering something about a soldiering board[or]sits back and reflects on his sea of little, material accomplishments[as decreasingly likely outcomes].";






