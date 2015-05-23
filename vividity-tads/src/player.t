/* Ben Scott - 201505142021 - vividity - player */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

me: BagOfHolding, Actor {
	name = 'Paul Erdos';
	vocabWords = 'me self Adaline Braun/Ada/Adaline/Adaline Braun/Braun';
	location = root;
	bulk = 10;
	desc {
		"You look like you need some rest. You\'re sore, and you have some serious bags under your eyes.";
		holdingDesc;
		/* inventoryListener: actorInventoryListener */
	}
}

