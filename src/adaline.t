/* Ben Scott - 201505142021 - vividity - adaline */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

adaline_braun : Woman 'Adaline' @under_gallery
"Ada used to be so familliar to you. It not like she\'s unrecognizable, but she is a little colder. " {
	isProperName = true;
	knownProp = &adalineKnows;
	seenProp = &adalineHasSeen;
	vocabWords = 'ada/adaline/adaline braun/braun';
	uselessToAttackMsg {
		cls();
		"\b\n\n\nAda smiles. It is terrifying. \"...waiting was hard.\" she intones. She walks slowly towards you, and then stops. You swing at her, and she defends herself. You notice that she\'s still smiling, and you are horrified. She is going to kill you if she gets the chance.";
		next;
		"\b\nYou seemed to have the upper hand, but when she finally disarmed you, she went much further. She crushes your ribcage with a big stone, and then rolls it upwards, over your skull. You remained alive long enough to see the pleasure in her eyes from dismembering you.";
		finishGameMsg('YOU HAVE DIED.',[finishOptionUndo]);
	}
}

/* adaline - states */

+ adaline_init : ActorState {
	specialDesc = "Adaline wanders around.";
	stateDesc = "She\'s not well. Gentiana said that they saw the murder happen, and that some of the man\'s blood might have gotten on her. You both agree that Ada is either traumatized beyond belief or psychotic. She's moving her hands in strange patterns and is pacing about, stopping sometimes, just for a moment, and then continuing her strange trance. ";
	noResponse = "She does her best, but she\'s simply not coherent.";
	isInitState = true;
}

+ adaline_stable : ActorState {
	specialDesc = "Adaline is looking around, seems kindof bored. When you look at her, she smiles like she used to, but it feels a bit off. You can\'t quite place it.";
	stateDesc = "She\'s all cleaned up, and her color is warmer. She\'s starting to giggle at your jokes again, which is so heartening. Things seem like they\'re going to be ok.";
}

+ adaline_murderous : ActorState {
	specialDesc = "Adaline watches you from behind her twisted grin.";
	stateDesc = "You\'re afraid to look into her eyes. She\'s not right, something is terribly wrong with her, and you can\'t place it. She does scare you, though, and you have a sinking feeling that she means to scare you.";
	noResponse = "She just cocks her head a little bit, smiling.";
}

/* adaline - end states */

/* adaline - clothes and posessions */

+ NPCWorn 'coat/sweatshirt/hoodie/jacket' 'Adaline\'s Jacket'
	"Adaline\'s Jacket fits snugly, and has sleeves that are plainly too long for her. It was once a bright color of amber, but now it's quite faded. It's become quite worn. " {
	isListedInInventory = null;
}

+ NPCWorn 'pants/shorts/' 'Adaline\'s Pants'
	"Ada told you these were her favorite. They\'re quite simple, just white dress pants with a sharp crease along the front and back. They\'re an unusually heavy fabric, and the seams are thick, to match. She\'s walked in them enough to have unraveled the left leg\'s hemming. " {
	isPlural = true;
	isListedInInventory = null;
}

/* adaline - end clothes */
