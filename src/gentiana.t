/* Ben Scott - 201505142021 - vividity - gentiana */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

gentiana_teuta : Woman 'Gentiana' @inside_dwelling
"Gentiana is a bookish kind of girl, with round glasses and very curly, auburn hair. She is slightly older than you, and is Ada\'s best friend. The two of you get along just fine, but you only know her through Ada, and you\'re not sure if you have anything in common. " {
	isProperName = true;
	globalParamName = 'gentiana';
	knownProp = &gentianaKnows;
	seenProp = &gentianaHasSeen;
	vocabWords = 'gen/genti/gentiana/gentiana teuta/teuta';
	uselessToAttackMsg = 'Her eyes go wide as she looks at you, aghast. \"What... what are you doing?\" She looks terrified and betrayed.';
	cannotKissActorMsg { return noKissMessages.getNextValue; }
	noKissMessages : ShuffledList {
		valueList = ['\"<<user.name>>, please, don\'t.\" she tugs away from you.','\"<b>Stop</b> it.\" she pushes you further away, and gives you a cold look.','\"<b>Get the fuck away from me, <<user.name>></b>.\" Her eyes dart back and forth between you and the door.'];
	}
}

+ AskTellTopic @adaline_braun
	"Gentiana starts to bawl. You shouldn\'t\'ve asked. <<gentiana_teuta.setCurState(gentiana_worried)>>";

/* gentiana - states */

+ gentiana_init : ActorState {
	specialDesc { print(gentiana_flustered.getNextValue);}
	stateDesc = "She has every reason to look as extremely fretful as she does. Her hair is slightly matted, her hands look a bit dirty, and every time you\'ve seen her recently, her eyes have looked puffy, like she\'d recently been crying.";
	isInitState = true;
	gentiana_flustered : ShuffledList {
		valueList = ['Gentiana shuffles some papers around, going back to the trivial work she\'s only doing to distract herself. You think you see droplets on some of the pages.', 'Gentiana moves to the corner of the room, and conspicuously turns her back to you to obscure whatever she\'s doing. When she turns around she seems embarrased.', 'Gentiana looks uneasy, as if she can\'t decide if she wants you to leave her alone or if she wants someone around.','Gentiana gives you a weird look for just a moment, and then it passes.'];
	}
}

++ HelloTopic, ShuffledEventList {
	['\"Hello.\"\nShe takes a moment to respond, \"... Hi, <<user.name>>.\"']
	['\"Hey\" you greet her.\n\"Oh, hi <<user.name>>.\"',
	'\"Hello.\" you say.\n\"Hello, <<user.name>>.\" she answers.']
}

++ ByeTopic {
	"\"Well, I'll see you.\" you say as you leave.
	\"Yeah, I'll, uh, see you.\" she replies.";
}

++ ImpByeTopic { "She doesn\'t notice you leave."; }


+ gentiana_worried : ActorState {
	stateDesc = "Gentiana is practically green, and her disquiet is infectious. She\'s really torn up about Ada.";
	specialDesc = "Gentiana is crying a bit now. ";
	noResponse = "She turns away!";
}
/*++ DefaultAnyTopic {
	"It\'s best to leave her alone for now. She\'s been through a lot, and she has more reasons to cry than she has to talk to you right now.";
}*/

++ DefaultAnyTopic {
	"You encourage her to make small talk, but it doesn\'t last. She\'s too torn up about Ada.";
}

+ gentiana_neutral : ActorState {
	stateDesc = "She\'s been better since you found Ada. Still, she knows it\'s uncertain if Adaline will recover, and that keeps her worried yet. ";
	specialDesc = "Gentiana is here, keeping half a smile on when she know\'s you\'re looking at her.";
}
/* gentiana - end states */

/* gentiana - inventory */

+ NPCWorn 'drab blouse/olive shirt/flowery blouse' 'olive blouse'
	"It\'s a high-cut, flowing blouse. It\'s olive, with a faint pattern of flowers. There's a faint stain on it, here and there. " {
	isListedInInventory = null;
}

+ NPCWorn 'pants' 'pants' "They\'re pants." {
	isPlural = true;
	isListedInInventory = null;
}

/* gentiana - end inventory */
