/* Ben Scott - 201505142021 - vividity - main */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

versionInfo : GameID {
	name = 'Vividity';
	byline = 'by Ben Scott';
	authorEmail = 'bescott@andrew.cmu.edu';
	genre = 'An exercize in overwriting and adventure puzzles.';
	version = '1';
	firstPublished = '2015';
	IFID = 'B8Z33851-6253-77C3-04EE-278CEDED48AC';

	showAbout() {
		"\b<center><strong><u><<versionInfo.name.toUpper()>></u></strong>
		\b<<versionInfo.byline>>, <<versionInfo.authorEmail>>
		\bVersion <<versionInfo.version>>, <<versionInfo.firstPublished>>
		\b<<versionInfo.genre>></center>\b\n";
	} /* showAbout */
} /* versionInfo */

gameMain : GameMainDef {
	initialPlayerChar = user;
	maxScore = 128;

	newGame() {
		intro.prolog();
		startup(); cls();
		user.init();
		intro.awake();
		runGame(true);
	} /* newGame */

	startup() {
		versionInfo.showAbout();
		"\b<p>(Type <<aHref('about', 'ABOUT')>> for notes on
            how to play, or <<aHref('restore', 'RESTORE')>> to restore
            a saved position.  To <<aHref('', 'begin the game')>>, just
            press the Enter key.) </p>";
		for (;;) {
			local cmd;
			local kw;
			local rqArg = null;
			cmd = inputManager.getInputLine(null, {:"\b&gt;" });
			if (rexMatch('<space>*$', cmd)!=null) return 1;
			if (rexMatch('<space>*(<alpha>+)<space>*$',cmd)!=null)
				kw = rexGroup(1)[3].toLower();
			else if (rexMatch('<space>*(rq|replay)'+'<space>+([\'"])(((?!%2).)+)%2?<space>*$',cmd)!=null) {
				kw = rexGroup(1)[3]; /* get the keyword */
				rqArg = rexGroup(3)[3]; /* get the argument */
			} else kw = ' ';
			if ('about'.startsWith(kw)) versionInfo.showAbout();
			else if ('restore'.startsWith(kw) && (RestoreAction.askAndRestore())) return 2;
			else if ('quit'.startsWith(kw)) return 3; /* deal with it */
			else if (kw=='rq' || 'replay'.startsWith(kw)) {
				if (rqArg==null) {
					local result = inputManager.getInputFile('Enter command file', InFileOpen, FileTypeCmd, 0);
					if (result[1]==InFileSuccess) rqArg = result[2];
				} if (rqArg!=null) { /* read from the file */
					setScriptFile(rqArg, kw=='rq'?ScriptFileQuiet:0);
					return 1; /* start the game */
				}
			}
		}
	} /* startup */
} /* gameMain */

