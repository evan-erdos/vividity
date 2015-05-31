/* Ben Scott - 201505142021 - vividity - rooms */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

class Plant : Thing {
	vocabWords = 'flora/leaf/leaves/shrub/plant/plants/flowers';
	identified = null;
	idDesc = "<<(identified)?'You\'ve seen this kind of plant before.':'You cant be sure what kind of plant this is. '>>";
}

class Herb : Food, Plant {
	//effect;
	count = 1;
	isPlural = true;
}

class Tree : Plant, Fixture {
	vocabWords = 'arbor/arbors/conifer/conifers/timber/tree/trees';
	desc = '\"I spy... something... green.\" \"Tree?\" \"ahh...\" \"Ok, my turn. I spy... eh, a vertical log-\" \"Tree.\" \"Yeah.\"';
}

backpack : BagOfHolding, StretchyContainer 'backpack' @root
"You've had this pack for awhile. It's somewhat old, but it still carries everything you need to go out adventuring." {
	initSpecialDesc = "Your tattered backpack is here. You typically don't leave home without it. ";
	bulkCapacity = 3000;
	minBulk = 1;
	vocabWords = 'back/backpack/pack/sack/bag';
	//affinityFor(obj) { return obj.ofKind(Tablet) ? 200 : inherited(obj); }
}

keyring : Keyring 'keyring' @root
"Your keyring is kindof barren. It\'s old enough that it\'s not as hard to separate it to put keys on, though. So, you\'ve got that going for you, which is nice." {

}

flashlight : Flashlight 'flashlight' @root
"Your flashlight is thin, and made from a very heavy metal. You would have a hard time breaking it, but the batteries don\'t last that long." {
	vocabWords = 'flash/flashlight/light/lamp/lantern/bulb/light/li';
	isLit = null;
	brightnessOn = 4;
	bulk = 2;
	weight = 2;
}

nightshade : Herb 'nightshade' @cliffs_edge
"The flowers are a brilliant shade of purple, their petals fade to black around the edges. The leaves are quite round. They seem to dart around, as if the wind is pushing them faster than other plants. " {
	identified = null;
	initSpecialDesc = "There's a small patch of flowers here, and they're a brilliant shade of purple. Their petals fade to black around the edges, and the leaves are quite round. They seem to dart around, as if the wind is pushing them faster than other plants around them. "
	initDesc = "There are quite a few varieties of this plant that you've heard about, and while some are known to improve concentration and quell appetite, some varieties are more potent, and possibly dangerous. You don't know enough about botany to really tell if these flowers can kill you. Perhaps you can find someone who does.";
	idDesc = "<<(identified)?'This is nightshade, a medicinal herb containing a very powerful psychostimulant. It is used in elixirs of speed.':'You don\'t know enough about botany to really tell if these flowers can kill you. Perhaps you can find someone who does.'>>.";
	vocabWords = 'nightshade/weed/weeds/leaves/plant/plants/sprig';
	disambigName = 'sprig of nightshade';
}

leaflet : Thing '(small) leaflet' 'the leaflet' @seaside_cliffs
"The leaflet is quite short, and has a tear along the top edge. It reads \"... the most amazing territory ever seen by mortals. No computer should be without one!\" At the end is what looks like a serial number, <b>69105</b>. Typical." {
	initSpecialDesc = "There's a leaflet here, held down by a rock. An edge flutters in the breeze.";
	initDesc = "It's just a small piece of paper. You have no idea how it hasn't blown away yet.";
}

/*
Decoration 'red sign*signs' 'red sign' @entranceCave
 "\n<FONT COLOR=WHITE BGCOLOR=RED FACE='Tads-Typewriter'>WAY OUT -></FONT>\n"
  dobjFor(Read) asDobjFor(Examine);


Distant 'shore' 'shore' @topOfMast
  desc() {
    switch(ship.location) {
    	case lakeRoom:
    		"The shore to port is a narrow strip of land bounded by the wall of the
         cave, through which a doorway leads to the north. ";
         break;
    	default:
        "The shore is directly on the port side of the ship. ";
    }
  }
;*/
