/* Ben Scott - 201505142021 - vividity - people */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

modify Actor {
	makeProper() {
		if (isProperName==null && properName!=null) {
			name = properName;
			isProperName = true;
			initializeVocabWith(properName);
		} return name;
	}
}

class NPCWorn: Wearable {
	wornBy = (location);
	hideFromALl(action) { return true; }
}

Man : Person { isHim = true; }
Woman : Person { isHer = true; }
Group : Person { isPlural = true; isIt = true; }

emily_dickinson : Woman 'emily dickinson' 'Emily'
"She sits quietly in a stiff wooden chair. She is deathly pale, and you know what color she's wearing." {
	desc {
		'A solemn thing - it was - I said -
		A Woman - White - to be -
		And wear - if God should count me fit -
		Her blameless mystery -

		F 307 (1862) 271';
	}
	isProperName = true;
	properName = 'Emily Dickinson';
	globalParamName = 'emily';
}

+ NPCWorn 'white frock/white summer dress/housedress' 'white dress' "It\'s a very clean, very white housedress." {
}

jane_hornsby : Woman 'jane hornsby' 'Jane'
"Jane is sitting here, looking at you sideways.\"... marzipan... heh. Marzipanic at the Disco!\"" {
	desc {
		'She looks inquisitively at you, as if expecting you to rattle off some big words.';
	}
}

saint_vincent : Woman 'annie clark' 'Annie'
"A slender woman stands before you. Power seems to radiate from her, and her gaze is not unlike that of a basilisk." {
	desc {
		'She looks at you expectantly. There\'s something about her eyes that puts you off-guard, as though you can\'t really tell if she\'s looking at or through you. She always makes you feel like that, like you don\'t really know who she is.';
	}
}

paul_erdos : Man 'paul erdos' 'Paul'
"He looks slightly thinner than he did the last time you saw him. His hair is all over. You know he gives it a perfunctory comb now and then, but not to the exclusion of his math. He's recently begun to roll his eyes at you when you ask him how many seconds have passed since you were born." {
}

ronald_scott : Man 'ronald scott' 'Ronald'
"Ron is getting up in age, and it shows. He is suprisingly not on the phone, and is walking between his couch and his office, in which he still does paperwork, his own taxes, forms... you hear him say to himself \"Lot's of work to do!\"" {
	desc {
		'He says your name enthusiastically every time he sees you, even if it\'s not been too long, and then smiles.';
	}
}
