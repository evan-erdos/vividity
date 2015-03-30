
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
Include Plurality by Emily Short.
[Include Automap by Mark Tilford.]
Use the serial comma and memory economy.
[Use brief room descriptions.]

Chapter 1 - Vivid Beginnings

Prologue is a Scene. Prologue begins when play begins. 
Prologue ends when Prologue Flag is zero.
Prologue Flag is a number that varies. Prologue Flag is one.
To end Prologue: 
	Now the Segfault Flag is one;
	now the Prologue Flag is zero.

Segfault is a scene. "You shudder awake. If you were a bit more careful, that is, if the room was spinning even a [italic type]little[roman type] bit slower, you might have dodged the doorframe on your way to your porcelain friend. You won't remember why your temple hurts, anyways. You seem to wake up, [italic type]again[roman type], with your face as cold as death, in the grime of the tile floor. Your stomach lining tastes different today. You begin to get up, but then the visceral stack of mistakes you're popping draw your attention. This drawn-out agony you're in, [italic type]boy[roman type]. If she hadn't've left last month, you're pretty sure none of this would have happened to you. It just got to be really bad about a week after she came home like... you don't really know what was wrong with her. Her really odd behaviour started that day, and just like hers, your little nightmare [italic type]never really went away[roman type]. It's too far apart: the dopamine rush is so delayed, it's so far away from the agony that Pavlov really can't help you out. You stagger to your feet, swaying a bit as you try to lock eyes with yourself in the mirror. Your eyes haven't focused yet, and you consider that you might not want to look at yourself like this.[paragraph break]Do you look at yourself?  ".
Segfault begins when Segfault Flag is one.
Segfault ends when Segfault Flag is zero. 
Segfault Flag is a number that varies.
To end Segfault: 
	now the Beginning Flag is one;
	now the Segfault Flag is zero.

Beginning is a scene. Beginning begins when Beginning Flag is one.
Beginning ends when Beginning Flag is zero. 
Beginning Flag is a number that varies. Beginning Flag is zero.
To end Beginning: Now the Beginning Flag is zero.

When Prologue begins:
	display the boxed quotation "Vividity                                           ";
	show the current quotation;
	wait for any key;
	clear the screen;
	say "Rosy mist departs around a falling man. An extravagant bit of kinematics closes his fate tightly. The edge of the canyon's shadow dances along uneven crags, casting a sharp shadow between lines of scarlet and thulian, tracing down through cracks by a man now crumpled into a outcropped ravine. Some of the onlookers squirm at the sight, while others are quite a bit more moved by it. Before too long, and after the catwalk underwent a good scrubbing down by the real heroes in this situation, the crowd thinned. There was obviously nothing to be done for the poor man, so many began to leave the platform, in disgust or boredom. 

	One woman didn't leave. She stood, transfixed by the coral and mauve blood on the rocks, and the sunset of rainbows falling on the canyon. From that evening on, she had them glowing within her, she had his colors in her blood, too. From that evening on, varicolored palettes of light would race through her mind, the tones and shades of which she would keep for the rest of her days. Gentiana, getting impatient, prodded at her friend. 
	'Adaline, let's go.' 
Gentiana had given her more than enough time to get out of her trance, and it was getting late. 'Come on, Adaline, we have to go.' Adaline absentmindedly stumbled away with her, as a ragged moon began it's path up through the sky.";
	Wait for any key;
	Clear the screen;
	End Prologue;
	Now the command prompt is "What will your name be?  ";
	After reading a command when collecting names:
		now the player name is the substituted form of "[the player's command]" in title case;
		now the player forename is word number 1 in the player name;
		now the command prompt is "Are you male or female?  ";
		now the command prompt is "> ";
		Reject the player's command;
		End Prologue.
		
After reading a command when the gender of the player is unknown:
	if the player's command includes "[gender]":
		now the command prompt is "> ";
		now the gender of the player is the gender understood;
		if the gender of the player is masculine, now the player is male;
		if the gender of the player is feminine, now the player is female;
		wait for any key;
		Reject the player's command.
	
Instead of looking when collecting names: do nothing.
Rule for printing the banner text when collecting names: do nothing.
Rule for constructing the status line when collecting names: do nothing.

Instead of looking when the gender of the player is unknown: do nothing.
Rule for printing the banner text when the gender of the player is unknown: do nothing.
Rule for constructing the status line when the gender of the player is unknown: do nothing.

When Segfault begins:
	if the player consents: 
		say "[italic type]Dear lord.[roman type] It isn't quite a sobering experience, but it's reflective. You're emaciated, haggard, and you still have some of your stomach lining in the corner of your mouth. The esophageal burning went away within the first week or so, but even though your nerves are so burned that it only tickles, it's getting more persistent. The ruggedness ain't the sexy kind, either, you look veritably awful.";
	otherwise: 
		say "Good call. You're already on the verge of impending mental collapse; you don't need to feel [italic type]worse[roman type].";
	End Segfault.

The Terrace is a region. Your Quarters, Nullify Room, Outside Quarters, Seaside Cliff, Cliff's Edge, Forest Overlook, Outside Dwelling, Interior Dwelling, Road to the Canyon's Stairway, The Town of Harston, and Harold's Utility Store are in the Terrace.

Your Quarters is a room. "[if unvisited] [otherwise]Your modest abode is a standard-issue dwelling, designed for the unusually harsh conditions that result from being so high up on the Terace. It is made of multiple alloys of metal, and consists of a central, dome-shaped room, and a number of other, more traditionally rectangular rooms branching off from it.". The backpack is in Your Quarters. "Your tattered backpack is here. You typically don't leave home without it."

Nullify Room is north of Your Quarters. "uh oh."

Quarters Door is a door. Quarters Door is outside from Your Quarters and inside from Outside Quarters. "Your door is a lightweight sliding panel, heavy enough to stop the rocky winds, but light enough to have been moved here for you to live."

Outside Quarters is northwest of Seaside Cliff. "You're outside your Quarters, which used to be quite well-kept. You haven't applied the sealant in months, and the wind-facing surface has become pitted and slightly rusty. The rails girding your catwalks look better, but the bluing is getting worn. Behind your house is a small dropoff. About half of your dome hangs over the edge, and there's a nice, shady area inside the supporting rods, with herringbone metal steps leading down and around it."

[Like, one day a friar starts coughing, and it never [italic type]really[roman type] goes away, except, you don't have a bubonic friend, or any friends, and this is only going to be a terminal condition for you because you aren't going to stop....[italic type]Adaline was getting worse... was... it couldn't've been more than a week, right? That's about when she left...[roman font] You were actually taken aback when, about a month ago, Gentiana came back carrying her. She was despondent, she just didn't make that much sense. That is about when this all started, right? You have a hard time remembering. You eat something to get that awful taste out of your mouth. It's a horrible process at first because you can't simply throw it up again, you've got to suffer and keep it down until it digests, at least halfway. It's like stomach bootstrapping. A few of your favorite, magical pills are on the counter, and you take one with your coffee. It isn't depression or pessimism at this point to assume that you're going to die if you don't find her, it's just a matter of realistic expectations. She's been gone for probably, about a week or so, to the best of your memory. You're going to need to be sharp to find her, too. You reflect some more after eating, and the mirror begins to tell you you're doing better than you feel. Colors slowly sneak into the room, getting richer as you light the burner again for some more coffee. You're beginning to wake up. You shower for a long time. It's not leisure, it's just a proportional amount of time, all things considered. The warmth comes alive, and the mirror looks you up and down, and seems to reflect positively on you, now. You've lost a few pounds, your teeth look whiter... The sun is getting warmer and brighter extremely quickly. [italic type]Why is it so warm, there's frost out there![roman type] You're excited. You're going to find Adaline today, and everything will be sunshine and rainbows. You'll grow old together and become rich and famous, which is, at least as it was explained to you, how this works.  [italic type]Oh right, that's what was wrong with her, she didn't seem to understand how life works.[roman type] You've waited way too long, you're not sure where the last month of your life went, but you're going to fix it all today.[end if]"] [Tierra Del Fuego, Patagonia, Argentina]

Seaside Cliff is a room. "The seaside terrace is far enough above the patchy trees and dells to afford a remarkable view of the ocean and sky. A ragged moon dusts some drying marshes to the southwest, and to the west lies a cascade of lavender and mahogany flora, gushing from marble cliffsides.[if unvisited] A serene breeze rolls over the terrace and eddies overtop the northwest trees, which are almost flush with the plateau.[end if]".
[The leaflet is here. "A leaflet is held down by a rock, an edge fluttering in the breeze." The description is "The leaflet is quite short, and has a tear along the top edge. It reads '... the most amazing territory ever seen by mortals. No computer should be without one!' At the end is what looks like a serial number, 69105. Typical."]

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

Interior Dwelling is a room. "The interior of the main room is quite cozy. It is lit dimly, with globes of light forming a lurid image of the inside." The desk is here. It is a supporter. It is fixed in place. "There is a metal-rimmed desk here, with some illegible papers strewn across it's surface.". The set of drafting compasses are on the desk. [A dirty bed is here. It is a bed. "The bed is unkempt, and has no pillow. It is raised an unusual distance off the floor."
Emily's Note is on the dirty bed. "There is an exceptionally old note here, with extremely fine and flowing writing on it." ]

Road to the Canyon's Stairway is northeast of Seaside Cliff. "By some wonder of igneous intrusion, the northern edge of the Terrace has a set of 6 stair-like stone batholiths, all following the Terrace's ragged edge. With one exception, they even descend in order. An amalgam of small shops and transportation businesses have made themselves right at home on the terrace surface, and a small residential sector spreads down to the first step."

The Town of Harston is north of Road to the Canyon's Stairway. "This little boomtown has dug itself into the hard sandstone surface of the Terrace. Most of the shops are brimming with life, and the stone streets have been worn to the bare rock by thick rubber wheels and the foot traffic of a very busy people. The stores to the east are so crowded that you'd likely be injured if you tried to buy something there, but the west end is quieter. There is a utilities shop to the west, a closed, nondescript shop to the southwest, and a cablecar service to the northwest." The Utility Shop Door is a door. The Utility Shop Door is west of The Town of Harston and east of Harold's Utility Store. It is scenery. "The door is quite thin, considering the sorts of sandstorms that sometimes blow through here, but Harold doesn't seem too concerned." The Cablecar Door is a door and scenery. The Cablecar Door is northwest of The Town of Harston and southeast of The Cablecar Company. "This small business's door is welcoming and unassuming."

Harold's Utility Store is a room. "A large, round man stands in a cacophony of fresh hiking supplies and tools which decrease in quality with the square of the distance from his admittedly long reach." A man called Harold is here. The indefinite article of Harold is "your local".
Every turn when the player can see Harold:
	if a random chance of 1 in 5 succeeds:
		say "Harold [one of]fidgets with a lantern's filament[or]busies himself with a new trinket[or]coughs a bit, and leans back in his squeaking chair[or]looks up at you for a moment, decides you aren't talking to him right now, and looks back down, muttering something about a soldiering board[or]sits back and reflects on his sea of little, material accomplishments[as decreasingly likely outcomes].";

The Cablecar Company is a room. "A large, round atrium opens to a chamber which sends and receives cars from the lower stop. The cars arrive in a "

The Drunk Ben is a room. "I am listening to St. Vincent at full volume. It took me three tries to type that. I am drunk on gramp's Grey Goose and Southern Comfort alcohols. It is a very bad thing. I have almost no doubt that he knows I've taken advantage of him, and I'm extremely anxious about the whole matter, because he might tell my father, which obviously means I have a thought disorder or manic depression. Consequently, the prescription of stimulant drugs would be almost completely counterindicated. 'Take out the garbage, masturbate.' I was presently suprised by the accuracy of my typing. Saint Vincent is a character in my RPGs because her music evokes a *physical* motion. It winds and unwinds, it twists and turns, all the cards make you turn, all the births in reverse... It is fantasic, at full volume at 3:34, Friday, March 27th, 2015. Now Prince Johnny is playing, which irritates me. I know myself to not have any sexual prospects with the Saint herself, but with Iott herself, I am extrememly aggrivated, she prays to Stephen Greco to allllllll... to make her a real girl... I spent half of my time with Gramps manic, belting my favorite songs while he wasn't around, and writing a text adventure while he was. Spit and Penny Style redemption... I do want to mean more than I meant to her. So I pray to Stephen Greco, to make me a real boy.". Posterity is in The Drunk Ben. It is fixed in place. The description is "People turn the TV on, looks just like a witness." A man named Jeff Vogel is here. "A man who directs your dreams is here. He wrote Avernum 2, and you listened to St. Vincent's Eponymous album while you played it. The player is extremely despondent and sad. 'What's the point of doing anything? What's the point of even sleeping? So I stopped sleeping, yeah, I stopped sleeping... What's the point in doing Anything?'".

Sesame Street Amusement Park is a room. "You stalk through the closed amusement park you remember so vividly from your childhood. It was a bustling, busy place, with all shapes and colors of people represented, walking around in what would otherwise be socially unacceptable clothing. Those memories stand strong against the erosion of time, but seeing this place now, so broken as it is... it's quite unsettling.".

Emily Dickinson is a woman. 
"A solemn thing - it was - I said -
A Woman - White - to be -
And wear - if God should count me fit -
Her blameless mystery -"


