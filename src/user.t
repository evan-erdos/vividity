/* Ben Scott - 201505142021 - vividity - user */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

user : BagOfHolding, Actor {
	name = 'Paul Erdos';
	gender = male;
	vocabWords = 'me self <<name>>';
	location = root;
	issueCommandsSynchronously = true;
	bulk = 10;
	desc {
		"You look like you need some rest. You\'re sore, and you have some serious bags under your eyes.";
		holdingDesc; /* inventoryListener: actorInventoryListener */
	}

	init() {
		" "; user.setName();
		" "; user.setGender();
		"\b\nName: <<user.name>>, <<user.printGender()>>";
		clear;
	}

	setName() {
		local cmd;
		for (local i=0;true;i++) {
			cmd = inputManager.getInputLine(null, {:"\b\nWho will you be?  &gt;" });
			if (i>6) { "Ok, you're done here. Come back when you've gradutated from the 5th grade."; i/=0;
			} else if (i>5) "You're really going for it, huh?";
			else if (i>4) "You're testing my patience.";
			else if (cmd.length()<3) "You really should have a name.";
			else if (rexSearch('%b(ada|adaline|adaline braun)%b',cmd.toLower())) "Be more original.";
			else if (cmd.length()>24) "What are you, some kind of 16th century Spanish noble? Be reasonable, here.";
			else if (rexSearch('%d',cmd)) "A real name please.";
			else if (rexSearch(util.obscenities,cmd.toLower())) "So, common decency, too. Call me particular.";
			else { user.name = cmd; break; }
		}
	}

	setGender() {
		local cmd;
		for (local i=0;true;i++) {
			cmd = inputManager.getInputLine(null, {:"\b\nMale or Female?  &gt;" });
			if (i>5) {
				"Have it your way."; i/=0;
			} else if (i>4) "I will do something really nasty if you don't shape up.";
			else if (i>3) "Can we get to the point, here?";
			else if (rexMatch('b|boy|m|male|man|masculine',cmd.toLower())) {
				user.gender = male; break; }
			else if (rexMatch('f|fe|female|feminine|g|girl|lady',cmd.toLower())) { user.gender = female; break; }
			else "Gender isn't black and white, I get it, and there's nothing wrong with that, but if you had to choose...";
		}
	}

	printGender() { return (user.gender==male)?'Male':'Female'; }
}
