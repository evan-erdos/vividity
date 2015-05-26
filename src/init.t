/* Ben Scott - 201505142021 - vividity - intro */

#include <adv3.h>
#include <en_us.h>
#include "macros.h"

intro : InitObject {
	prolog() {
		bannerClear(1);
		"\b\nRosy mist departs around a falling man. The edge of the canyon's shadow dances along uneven crags, casting a sharp shadow between lines of scarlet and thulian, traced down through cracks by a man, presently crumpled into an exposed ravine. Onlookers squirm at the sight; some are much more <b>moved</b> by the spectacle. Before too long (and after the catwalk underwent a thorough scrubbing down by the <b>real</b> heroes in this situation), the crowd thinned. Authorities came and went; nobody could have seen who shot him. Many began to leave the platform, in disgust or boredom.\b\n";
		next;
		"\nOne girl didn't leave. She stood, transfixed by the coral and mauve stains on the rocks, oblivious to the sunset of rainbows falling on the canyon. Evening subdued the canyon's vibrance, but she still had them glowing within her: She had his colors in her blood, now, too. From that evening on, varicolored palettes of light would race through her mind, and she would keep their tones and shades for the rest of her life.\n";
		clear;
		local spacer = bannerCreate(null, BannerFirst, statuslineBanner.handle_, BannerTypeTextGrid, BannerAlignTop, 10, BannerSizePercent, BannerStyleBorder);
		local title = bannerCreate(null, BannerLast, statuslineBanner.handle_, BannerTypeTextGrid, BannerAlignTop, 16, BannerSizePercent, BannerStyleBorder);
		bannerSetTextColor(title, ColorBlue, ColorTransparent);
		bannerSetScreenColor(title, ColorStatusBg);
		bannerSay(title, '\b          <<versionInfo.name>>       \b');
		clear;
		bannerDelete(spacer);
		bannerDelete(title);  // """ can be used like in lisp for this
		"\b\"Adaline, let\'s go.\"

		\b\nGetting impatient, Gentiana prodded at her friend. She\'d given Ada <b>plenty</b> of time to get out of her little trance, and it was getting late. \"Come on, Adaline, we have to go.\" Adaline absentmindedly stumbled away with her, occasionally glancing up, at the ragged moon, blankly watching it find it\'s path up through the sky.";
		clear;
	}

	awake() {
#ifndef SUDO
		"\b\nYou shudder awake. You get up off the floor and instinctively move towards the bathroom. If you were a bit more careful (rather, if the room was spinning even a <b>little</b> bit slower), you might\'ve dodged the doorframe on your way to assess the damage you've done to yourself in the last few days. You won\'t remember why your temple hurts. You begin to get up, but the visceral stack of mistakes you\'re popping off keep you down. You stagger to your feet, swaying a bit as you try to lock eyes with yourself in the mirror. Your eyes haven't focused yet, and you consider that you might not want to see yourself like this until you\'re overabundantly cleaner.";
		next;
		"\b\nYou\'re already on the verge of impending mental collapse; you don't need to feel <b>worse</b>. You try to avoid the mirror (as one would avoid the gaze of a <b>basilisk</b>) but it\'s unavoidable. It\'s less sobering than it is <b>alarming</b>. You turn to start the bath, and then look back at the mirror. You're emaciated, haggard... that taste in your mouth...";
		next;
		"\b\nYou make an earnest attempt to clean up. There\'s a lot of water and scraping, and it doesn\'t go well. You consider the surfeit of ways that more involved measures to clean yourself could go (razors, nail clippers, et al), and without a second thought you walk out of the room to your dresser. Nicer clothes will at least allow you to masquerade as a well-put-together human being.";
		clear;

#endif
	}

	/*Do you look at yourself?  ";
		if the player consents:
			say "[line break][i]Dear lord[r].

			It's less sobering than it is [i]alarming[r]. You turn to start the bath, and then look back at the mirror. You're emaciated, haggard, and -

			[i]You thrust your face into the running bathwater before you consciously identify what that was in the corner of your mouth.[r]

			You resume your frantic cleaning. The esophageal burning subsided a while ago, but you're afraid your nerves have been dissolved by the acid, or have just [i]plainly given up[r]. You look veritably awful.";
		else:
			say "[line break]Good call. You're already on the verge of impending mental collapse; you don't need to feel [i]worse[r]. You avoid the mirror like it's a basilisk until you're overabundantly cleaner.";
		say "You make an earnest attempt to clean up. There's a lot of water and scraping, and it doesn't go well. [if the gender of the player is masculine]You shave a solid half of your face properly, and you're just going to have to deal with the fact that the short hairs around your whorl are going to feel weird every time there's wind[else]You put concealer literally everywhere. You're just going to have to deal with the fact that there are colors on your face today that simply can't be corrected. Long pants are a foregone conclusion. You consider the surfeit of ways that mascara could go horribly wrong, and without a second thought you walk out of the room to your dresser[end if]. Nicer clothes will at least allow you to masquerade as a well-put-together human being."; */
}


