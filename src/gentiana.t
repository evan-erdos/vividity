/* Ben Scott - 201505142021 - vividity - gentiana */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

gentiana_teuta : Woman 'gentiana teuta' 'Gentiana' @inside_dwelling
"Gentiana is a bookish kind of girl, with round glasses and ver curly, auburn hair. She is slightly older than you, and is Ada\'s best friend. The two of you get along just fine, but you only know her through Ada, and you\'re not sure if you have anything in common. " {
	isProperName = true;
	knownProp = &gentianaKnows;
	seenProp = &gentianaSees;
	uselessToAttackMsg = 'Her eyes go wide as she looks at you, aghast. \"What... what are you doing?\" She looks terrified and betrayed.';
	cannotKissActorMsg { return noKissMessages.getNextValue; }
	noKissMessages : ShuffledList {
		valueList = ['\"<<user.name>>, please, don\'t.\" she tugs away from you.','\"<b>Stop</b> it.\" she pushes you further away, and gives you a cold look.','\"<b>Get the fuck away from me, <<user.name>></b>.\" Her eyes dart back and forth between you and the door.'];
	}
}

+ NPCWorn 'drab blouse/olive shirt/flowery blouse' 'olive blouse'
	"It\'s a high-cut, flowing blouse. It\'s olive, with a faint pattern of flowers. There's a faint stain on it, here and there. " {
	isListedInInventory = null;
}

+ NPCWorn 'pants' 'pants' "They\'re pants." {
	isPlural = true;
	isListedInInventory = null;
}

+ gentiana_initial : ActorState {
	specialDesc = "Gentiana shuffles some papers around, going back to the trivial work she\'s only doing to distract herself. You think you see droplets on some of the pages.";
	stateDesc = "She has every reason to look as extremely fretful as she does. Her hair is slightly matted, her hands look a bit dirty, and every time you\'ve seen her recently, her eyes have looked puffy, like she\'d recently been crying. Ada was her best friend.";
	noResponse = "She turns away!";
	isInitState = true;
}

++ DefaultAnyTopic {
	"It\'s best to leave her alone for now. She\'s been through a lot, and she has more reasons to cry than she has to talk to you right now.";
}

+ gentiana_worried : ActorState {
	stateDesc = "She looks extremely fretful, as she well should. Her curly, auburn hair is slightly matted, her hands look a bit dirty, and every time you\'ve seen her recently, her eyes have looked puffy, like she\'d recently been crying. Her best friend is missing, and even before that, Ada was behaving like... like she was in some sort of a trance. She would be incoherent and irratic, but then would stop and become silent, sometimes for hours. Her disquiet is infectious. ";
	specialDesc = "Gentiana is crying a bit now. ";
}

++ DefaultAnyTopic {
	"You encourage her to make small talk, but it doesn\'t last. She\'s too torn up about Ada.";
}

+ gentiana_neutral : ActorState {
	stateDesc = "She\'s been better since you found Ada. Still, she knows it\'s uncertain if Adaline will recover, and that keeps her worried yet. ";
	specialDesc = "Gentiana is here, keeping half a smile on when she know\'s you\'re looking at her.";

}

+ AskTopic @ada
	"Gentiana starts to bawl. You shouldn\'t\'ve done that.";
	//"\"Hi, I'm <<user.name>>.\" There is a slight pause. \"I\'m Gentiana.\"<<gentiana_teuta.makeProper>>";
