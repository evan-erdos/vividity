/* Ben Scott - 201505142021 - vividity - util */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

util : object {
	obscenities = 'fuck|shit|ass|penis|pussy|shit|damn|vagina|tit|boob|felch|cunt|blumpkin|clit|cum|semen|butt';

	ask(f) { while (!f()) continue; }
}

suppressOutput: OutputFilter {
	filterText(tgt,src) { return ' '; }
}

modify statusLine {
	showStatusRight() {
		"<<user.name>> - <<versionInfo.name>> - ";
		inherited();
	}
}

enum male, female;
