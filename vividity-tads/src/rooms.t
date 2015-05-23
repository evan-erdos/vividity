/* Ben Scott - 201505142021 - vividity - rooms */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

Room template 'roomName' "desc"? 'destName'? 'name'?;

root: Room 'Your Quarters' "It's a standard-issue dwelling, designed for the unusually harsh conditions of the Terrace. It is made of many alloys of metal, and is joisted by slender titanium trusses. It's defining feature is the central, dome-shaped foyer from which the more traditional, rectangular rooms branch off." 'Quarters' {
	west = outside_quarters;
	/* addToScore(2, 'reasons'); */
}

outside_quarters: OutdoorRoom 'Outside Your Quarters' "You're outside your Quarters, which used to be quite well-kept. You haven't applied the sealant in months, and the wind-facing surface has become pitted and slightly rusty. The rails girding your catwalks look better, but the bluing is getting worn. Behind your house is a small dropoff. About half of your dome hangs over the edge, and there's a nice, shady area inside the supporting rods, with herringbone metal steps leading down and around it." {
	east = root;
	southwest = seaside_cliffs;
}

seaside_cliffs: OutdoorRoom 'Seaside Cliffs' "The seaside terrace is far enough above the patchy trees and dells to afford a remarkable view of the ocean and sky. A ragged moon dusts some drying marshes to the southwest, and to the west lies a cascade of lavender and mahogany flora, gushing from marble cliffsides. A serene breeze rolls over the terrace and eddies overtop the northwest trees, which are almost flush with the plateau." {
	northwest = harston_road;
	northeast = outside_quarters;
	southeast = forest_overlook;
	south = outside_dwelling;
	southwest = cliffs_edge;
}

cliffs_edge: OutdoorRoom 'Cliffs Edge' "There's enough of a wind coming up the edge of the cliff to lift a small animal. Looking down over the white and vaguely purple chalk, you see an isolated cove, locked on two sides by tall rocks. There is a sand dune in front of a ravine-like opening, which seems to run under the cliffs somewhere to the north." {
	northwest = seaside_cliffs;
}

outside_dwelling: OutdoorRoom 'Outside Dwelling' "Halfway to the edge of the plateau is a small, dome-like dwelling, with some paths running between it and a small garden behind it, and another area downhill. It is noisily rusted around the rounded main roof, but the seaside wind has somewhat polished the east hemisphere." {
	north = seaside_cliffs;
	southwest = inside_dwelling;
}

inside_dwelling: Room 'Inside Dwelling' "The interior of the main room is quite cozy. It is lit dimly, with globes of light forming a lurid image of the inside." {
	northeast = outside_dwelling;
}

forest_overlook: OutdoorRoom 'Forest Overlook' "At a gentle angle, the ocean-facing side of the plateau slides down to form a nice, shady spot beneath the trees. From here, the gargantuan arbors string all the way up above the raised rock of the terrace. There are tufts of branches almost within reach at the edge of the cliff." {
	northeast = seaside_cliffs;

}

harston_road: OutdoorRoom 'The Road to Harston' "By some wonder of igneous intrusion, the northern edge of the Terrace has a set of 6 stair-like stone batholiths, all following the Terrace's ragged edge.With one exception, they even descend in order. An amalgam of small shops and transportation businesses have made themselves right at home on the terrace surface, and a small residential sector spreads down to the first step." {
	southeast = seaside_cliffs;

}

town_harston: OutdoorRoom 'The Town of Harston' "This little boomtown has dug itself into the hard sandstone surface of the Terrace. Most of the shops are brimming with life, and the stone streets have been worn to the bare rock by thick rubber wheels and the foot traffic of a very busy people. The stores to the east are so crowded that you'd likely be injured if you tried to buy something there, but the west end is quieter. There is a utilities shop to the west, a closed, nondescript shop to the southwest, and a cablecar service to the northwest." {
	south = harston_road;
}
