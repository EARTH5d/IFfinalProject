"Not a Fairy Tale" by Casey Alton Marshall

Use American dialect. 

Release along with a website.
Release along with the introductory postcard.
Release along with an interpreter.
Release along with the library card.

The story creation year is 2025.
The story title is "Not a Fairy Tale".
The story author is "Casey Alton Marshall".
The story description is "The Princess of the planet Arkonkia has been abducted. Space pirates assault and overrun the Federation's expedition fleet sent to save her. You manage to escape, but your pod crashes and everyone else in there has perished, leaving you alone as if in a desert region of a nearby planet. Fortunately the kidnapper base of operations, where the princess is known to be imprisoned, is only a few kilometers away. But it is not like you can just walk in there and get the princess. Also you have no idea how you two will be getting home."

When play begins: 
	say "After coming back from a war between the Democratic Federation and the Syndicated Consortium, the Humans and the Avisurites, you were shocked to hear that an Anisurite Holdout from the war kidnapped the Crown Princess of the Federation member state Arkonkia. After her family pleads with both the Federation's Senate and the Consortium's Supreme Council to send an expedition force to rescue her. Despite being scarred by the war, and both your own and everyone else's best judgement you feel compelled to volunteer to be part of the mission to save her. Unfortunately, as the ships were just approaching the planet Arkonkian scouts tracked the Princess and her kidnappers to, space pirates attacked the small fleet. The good news you and a few others managed to get on an escape pod. The bad news is that your pod was among many shot by the pirates' ships. This resulted in your pod's engines and its Alcubierre drive being both badly damaged. The Pod crashed upon the planet. To make matters worse, despite the fact you all manage to deploy the parachute, it didn't prevent the pod from ramming into the planet's surface at high speed knocking you unconscious. When you awake, you see that you are the only one to have survived the crash. Furthermore the crash broke the pod's hyperspace communications and you have no idea if any of the other pods have made it. You are on your alone.";
	repeat with P running through people:
		now the current hit points of P is the maximum hit points of P;	
	 now the right hand status line is "[health status]".
	
To say health status:
	if Mabel is asleep:
		say "HP:[current hit points of the player]";
	otherwise:
		say "HP:[current hit points of the player] Mab HP:[current hit points of Mabel]";

Part - Mechics and Stuff

The block giving rule is not listed in the check giving it to rules.

understand "flip on [something]","flip [something] on", "toggle on [something]" and "toggle [something] on" as switching on.
understand "flip off [something]","flip [something] off", "toggle off [something]" and "toggle [something] off" as switching off.

Understand the command "hug" as something new.

Hugging is an action applying to one visible thing.
Understand "hug [something]" as hugging.

Check hugging:
	if noun is not a person, say "You are on a mission. It probably not a good use of your time to go around hugging inanimate." instead;
	if noun is an Avisurite, say "That is probably not a smart idea." instead;
	if noun is an animal, say "Are you sure you want to go around hugging the fauna in an unfamiliar world? They probably wouldn't like that anyway." instead;

Carry out hugging:
	say "You hug [noun].";
	if noun is a asleep person:
		now noun is awake;
		
Flipping is an action applying to one visible thing.
Understand "flip [something]" and "toggle [something]" as flipping.

Check flipping:
	if the noun is not a device, say "This isn't something you can toggle on and off." instead;
	
Carry out flipping:
	if the noun is switched on, try switching off the noun;
	otherwise:
		 try switching on the noun;

A person can be asleep or awake. 
Instead of waking an awake person: say "They are already awake."
Instead of waking an asleep person: say "How, are you going to do it though."

understand "hand [something preferably held] to [someone]", "hand over [something preferably held] to [someone]" , "hand [something preferably held] over to [someone]" and "offer [something preferably held] to [someone]" as giving it to. understand "hand [someone] [something preferably held]" and "offer [someone] [something preferably held]" as giving it to (with nouns reversed).

understand "drag [something]" as pulling.
understand "pull [something] [direction]", "pull [something] to [direction]" ,"drag [something] [direction]" and "drag [something] to [direction]" as pushing it to.

Clothing is a kind of thing. The description of clothing is "This is an article of Clothing. Clothing is the weird stuff that many if not most form of intelligent life wear." Clothing is always wearable.

Radio Parts are a kind of thing. Radio Parts can be uncutted or cutted. Radio Parts are usually uncutted.

Rule for deciding whether all includes the coconut-thing while taking:
	if coconut-thing is in the weird plant:
		say "You decide to avoid taking the coconut thing in that weird plant to avoid poking yourself.";
		it does not;
		
Section - eating stuff

the standard report eating rule is not listed in the report eating rules.

to say possessive for (subject - a person):
	if the subject is the player:
		say "Your";
	otherwise:
		 say "[printed name of the subject]'s".

Check an actor eating an edible thing:
	if the current hit points of the actor > the maximum hit points of the actor - 5:
		say "[regarding actor][They] [are] not hungry." instead;

After an actor eating an edible thing (called food):
	say "[regarding the actor][They] [eat] [the food].";
	let healing be a random number between 5 and 10;
	increase the current hit points of the actor by healing;
	say "[possessive for the actor] health has been increased by [healing]. [Current Health of the actor]";
	if Actor is Mabel:
		if Food is a ration and Mabel had a ration is false:
			say "'Woooww,' Mabel goes in shock, 'This is actually much better than it looks.'";
			now Mabel had a ration is True;
		otherwise:
			say "Mabel says, '[one of]Mmmm[or]Thanks[or]Yumy[purely at random].'";
	continue the action;

Check giving an edible thing(called food) to Mabel:
	if the current hit points of Mabel > the maximum hit points of Mabel - 5:
		say "Mabel refuses [the food], she claims that she is not hungry right now.";
		
instead of giving an edible thing to Mabel:
	now Mabel carries the noun;
	try mabel eating the noun;
	
Report eating an edible thing (called food):
	if food is Rations:
		say "It tastes good, very good. Though[first time]after serving five years in the Army of the Democratic Federation [only]you still do not have any idea what it is made form.";
	otherwise:
		say "It tastes deliciously. Hopefully it will not make you sick.";
	
You hungry is a recurring scene. You hungry begins when the current hit points of the player < the maximum hit points of the player - 5 and current hit points of the player > 0. You  hungry ends when the current hit points of the player >= the maximum hit points of the player.

When you hungry begins:
	say "Your stomacth [one of]rumbles[or]roars[or]growls[purely at random] with hunger.";
	
Mabel hungry is a recurring scene. Mabel hungry begins when the current hit points of the Mabel < the maximum hit points of the Mabel - 10 and current hit points of the Mabel > 0. Mabel hungry ends when the current hit points of Mabel >= the maximum hit points of the Mabel.

When Mabel hungry begins:
	say "Mabel [one of]yells out to[or]calls out to[or]shouts out to[or]imform[or]tells[or]tells[purely at random] you, 'Hey Mason, I am [one of]feel[or]feel[or]starting to feel[or] beginning to feel[purely at random] a bit peckish.'";
	
Ration are a kind of thing. Ration are always edible. The description of ration is "Surprisingly good, though you can exactly tell what they are or what is in them. They say they are very healthy and can even help you heal faster. Even after all you experience fighting in the war you are still not sure how much you actually believe that last part."

Fallen fruit is a kind of thing. Fallen fruit is always edible. Yellow fruit is a kind of fallen fruit.  The description of the yellow fruit is "Big gigantic big yellow strawberry-looking thing the size of a small orange." Understand "yellow strawberry" as yellow fruit. 
Red fruit is a kind of fallen fruit. The Description of red fruit is "It looks like a banana, but it is red.” Understand "red banana" as red fruit. 

Section - talking to people

Asking someone about something is speech.
Telling someone about something is speech.
Answering someone that something is speech.

understand "say to [someone] [text]" as telling it about.
understand "talk to [someone] about [text]" as telling it about.
understand "talk with [someone] about [text]" as telling it about.
understand "talk with [someone] on the topic of [text]" as telling it about.
understand "tell [someone] [text]" as telling it about.
understand "speak to [someone] about [text]" as telling it about.
understand "speak with [someone] about [text]" as telling it about.
understand "ask [someone] to [text]" as asking it about.
understand "ask [someone] if [text]" as asking it about.
understand "ask [someone] if they can [text]" as asking it about.
understand "ask [someone] if he can [text]" as asking it about.
understand "ask [someone] if she can [text]" as asking it about.
understand "ask [someone] if it can [text]" as asking it about.
understand "reason with [someone] about [text]" as asking it about.
understand "reason with [someone] on [text]" as asking it about.
understand "reason [someone] on [text]" as asking it about.

Understand "talk to [someone]" or "talk with [someone]" or "tell [someone]" or "say to [someone]" or "reason [someone]" as a mistake ("[talkAboutWhat]")

To say talkAboutWhat:
	say "what do you want to say to them?"

Instead of speech when the noun is the Grue:
	repeat through Table of Grue Responses:
		if the topic understood includes topic entry:
			say "[first time]We speak to the Grue in its native Gruish, well broken Gruish pepper with words from Arkonkian and Kawkawgrrrr (an Avisurite language you pick up a little of during in the war).[only][reply entry][line break]Though your Gruish is rusty.";
			rule succeeds;
		say "[one of]You are not to sure if the Grue understand what you tried to say[or]The Grue does not seem to understand you, maybe you did not say it right[or]'what?', the Grue reply back to you confused[or]The Grue laughs at you[then purely at random]. Your gruish is very rusty. Try something saying else.";
	
Instead of speech when the noun is Mabel:
	if Mabel is awake:
		if follow the natives is happening and the topic understood includes "follow/following/go":
			say "You tell Mabel you think you should follow the little furry critters. She agrees.";
			now turnsInPod is 6;
			rule succeeds;
		otherwise if follow the natives is happening and the topic understood includes "stay/staying/ingore":
			say "You tell Mabel you think you should stay. She agrees and you both climb into the escape pod.";
			now turnsInPod is 4;
			rule succeeds;
		otherwise:
			repeat through Table of Mabel Responses:
				if the topic understood includes topic entry:
					unless the topic understood includes "Apple/Natives/Native/Rodent/Locals" and encountering the natives is not happening:
						say "[reply entry]";
						rule succeeds;
				say "She responds, '[if Follow the Natives is happening]I am much rather focused on the situation at hand right now. You know that I am tempted to [bold type]FOLLOW[roman type] these guys and see where they lead us, but if you really want to we can [bold type]STAY[roman type] here. Please tell me when you make up your mind, Mason[otherwise]We do not have time to talk about that[one of][or][or][or][or][or] mason[or] mason[or] mason[or] brother[or] lieutenat[purely at random][end if].'";
	otherwise:
		say "She still fast a sleep unaware that you are trying talk to her.";
	now Did Mabel do something is true;

		
Instead of speech when the noun is an animal:
	say "[the noun] looks at you with a curious look.";
		
Instead of speech when the noun is an avisurite:
	say "[The noun] is an enemy. It probably not a good idea to talk to them.";
	
Instead of speech when the noun is the player:
	say "There is a lot of stuff that you can talk to yourself about, but you would more likely than not already known it.";
	
instead of speech when the noun is the Natives:
	say "You can not speak their language and they surely will not know any that you or your sister can. Though it seems they are trying to tell you something. But you think they want you to [if follow the Natives is happening]follow them[otherwise]take the 'apple'[end if]. "
	
Yelling at is an action applying to one thing.
Understand "yell at [something]",  "shout at [something]", "scream at [something]", "holler at [something]", "yell to [something]",  "shout to [something]", "scream to [something]", "holler to [something]" as Yelling at.

Check yelling at the player:
	if Mabel is in the location of the player:
		try yelling at Mabel instead;
	otherwise:
		say "Yelling at yourself is not going to get you anywhere." instead;

Carry out yelling at:
	if the noun is Mabel:
		if Mabel is asleep:
			say "The Princess shoots straight up and says angrily, 'What in the hell? Mason? What are you doing here and why are you yelling.' In response you just giggle at her. 'Oh, grow up brother. What are we, 8?'[paragraph break]Still giggling you say, 'Okay okay. I am sorry.'[paragraph break]'Oh my stars mason,' she says,'And people think I am the childish one.'";
			now Mabel is awake;
		otherwise:
			say "Mabel [one of]snaps at you[or]snaps back at you[or]says to you[or]screams back[one of][or] at you[purely at random][or]yells [one of]back[or]at you[or]back at you[purely at random][at random], '[one of]Mason there no need to scream, brother.'[or]I do not think that is a good idea.'[or]SShhhhhh!!!!'[or]Why are you yelling?'[purely at random]";
		now Did Mabel do something is true;
	otherwise if the noun is Cowardly avisurite:
		moveCowardlyOperator;
	otherwise if the noun is Crab and the crab is alive:
		CrabMoves;
	otherwise if the noun is the dimetrodon and the dimetrodon is alive:
		say "It roars back at you before return to mining it own bussiness.";
	otherwise if the noun is an Avisurite:
		if Guard fight is happening or Mabel is awake or the noun is the fierce avisurite:
			say "[The noun] [one of]chirps[or]tweets[or]barks[or]yelps[or]hisses[or]snaps[or]roars[or]growls[or]screams[or]screeches[or]hoots[or]kaws[purely at random] right back at you.";
		otherwise:
			say "That probably not a good idea, they will hear you";
	otherwise if the noun is the Grue:
		if Entrance is dark:
			say "You think you hear someone speaking, you are not sure what they are saying, who or what they are, or where they are, but you think they are telling you to quiet down.";
		otherwise:
			say "You think the grue is telling you to stop. But your Gruish is rusty.";
	otherwise if the noun is the Natives:
		say "The local seems a be either curious, concern or scared of you now.";
	otherwise:
		say "You yell at [the noun] nothing happens.";
		
Yelling is an action applying to nothing.
Understand "yell", "shout", "scream" and "holler" as Yelling.

Carry out yelling:	
	if the location of the player is not Princess room and the number of avisurite in the location of the player > 0 and (Mabel is asleep or Guard Fight is not happening) :
		say "That probably not a good idea, they will hear you";
	otherwise if the number of people in the location of the player > 1:
		if the location of Mabel is the location of the player:
			try yelling at Mabel;
		if cowardly avisurite is in the location of the player:
			try yelling at cowardly avisurite;
		if the number of avisurite in the location of the player > 0:
			try yelling at a random avisurite that is the location of the player;
		if dimetrodon is in the location of the player and dimetrodon is alive:
			say "The Diemtrodon like creature roars back at you before return to mining it own bussiness.";
		if Grue is in the location of the player:
			try yelling at the Grue;
		if The Natives is in the location of the player:
			try yelling at the Natives;
		if The Crab is in the location of the player and Crab is alive:
			try yelling at the Crab;
	otherwise:
		say "You yell out. Nothing happens."	


Section - attacking

to say Current Health of (subject - a person):
	say "[regarding subject][Their] health is now [current hit points of the subject].";

to say (target - a person) health after (damage - a number):
	say "[Refer to target] [take] [damage] damage. [Current Health of target]";
	
To say refer to (subject - a thing):
	if the subject is the player:
		say "You";
	otherwise if the subject is a avisurite:
		 say "The [printed name of the subject]";
	otherwise:
		 say "[printed name of the subject]";
	
To say (subject - a thing) has been:
	if the subject is the player:
		say "You have been";
	otherwise:
		 say "[Refer to the subject] has been";

the block attacking rule is not listed in the check attacking rules.

A person has a number called maximum hit points. A person has a number called current hit points.
The maximum hit points of a person is usually 15.

When play begins:
	repeat with P running through people:
		now the current hit points of P is the maximum hit points of P.
		
check attacking something:
	if noun is player:
		say "Why are you hitting yourself?";
	if noun is not a animal that is alive and noun is not an Avisurite:
		say "Violence is rarely ever the answer to things.";
		
Instead of attacking an Avisurite (called the target):
	if a random chance of 18 in 20 succeeds:
		let damage be a random number between 2 and 5;
		decrease the current hit points of the target by damage;
		say "You hit [the target][makes target drop something][The target health after damage]";
		finger if the target is dead;
	otherwise:
		say "[refer to the target] [one of]ducked[or]dodge[or]jump out of the way[purely at random], causing you to miss.";
	if target is undefeated:
		try target attacking the player;

instead of an actor that is not the player attacking a person (called the target):
	if actor is an avisurite and a random chance of 18 in 20 succeeds:
		let enemy damage be a random number between 1 and a random number between 5 and 10;
		decrease the current hit points of the target by enemy damage;
		say "[The actor] [one of]punches [Refer to target][or]scratches [Refer to target] with its finger claws[or]tail-whacks [Refer to target][or]pecks at [possessive for target] arm with its beak[purely at random][makes target drop something][line break][The target health after enemy damage]";
		now hasAttack of actor is true;
		finger if the target is dead;
	otherwise if actor is Mabel and a random chance of 15 in 20 succeeds:
		let damage be a random number between 1 and a random number between 5 and 6;
		decrease the current hit points of the target by damage;
		say "Mabel hit [the target][makes target drop something][The target health after damage]";
		finger if the target is dead;
	otherwise:
		say "[refer to the target] [one of]ducked[or]dodge[or]jump out of the way[purely at random], causing [refer to actor] to miss [regarding target][them].";
	if the actor is Mabel and the target is an undefeated avisurite:
		try target attacking the actor;	
		
To say makes (target - a person) drop something:
	let item to drop be nothing;
	if a random chance of 1 in 3 succeeds and the target carries a plasma blaster: 
		repeat with arm running through plasma blasters carried by the target:
			if arm is switched on:
				now item to drop is arm;
				rule succeeds;
		now item to drop is a random plasma blaster carried by the target;
	if a random chance of 1 in 12 succeeds and the number of things carried by the target > 0: 
		now item to drop is a random thing carried by the target;
	unless item to drop is nothing:
		silently try target dropping item to drop;
		say ", knocking [one of][regarding target][their][or]the[at random] [item to drop] out of [regarding target][their] hands. ";
	otherwise:
		say ". "
		
to finger if (target - a person) is dead:
	if the current hit points of the target <= 0:
		if target is an Avisurite:
			say "[The target] falls to the floor.";
			now the target is defeated;
			[now every thing worn by the target is in the location;]
			now everything carried by the target is in the location;
			now the target is nowhere;
		otherwise if target is player:
			say "[paragraph break]You've been injured one too many times. You are now dead.";
			end the story;
		otherwise if the target is Mabel:
			say "[paragraph break]Mabel is now dying. You have failed the mission.";
			end the story;
		otherwise:
			say "Error.";
	otherwise if target is an avisurite:
		if the current hit points of the target < the maximum hit points of the target:
			now the target is wounded;


Chapter -  Animals

An animal can be alive or dead. An animal is usually alive. An animal is usually neuter;

carry out attacking an animal (called the creature) when the creature is dead:
	say "[The creature] is already dead.";
	
instead of taking an animal:
	if the noun is the crab:
		If the crab is dead:
			now the player carries the crab;
			say "You have taken the crab." ;
		otherwise:
			continue the action;
	otherwise:
		if the Dimetrodon is dead:
			say "This is very heavy. Maybe try pushing. Or maybe cutting it up into smaller pieces.";
		otherwise if the Feeding the Grue is not happening:
			say "You are going to try taking it.";
		otherwise:
			say "You are going to try carrying that thing alive. Sure it might be mining it would business now, but if you bother it, then it probably be more likely to eat you than [if Feeding the Grue has not happened]a[otherwise]the[end if] Grue.";
			

Section - Dimetrodoniod

The Dimetrodon is a pushable between rooms animal.
Understand "Dimetrodon", "Dimetrodoniod" and "Dimetrodon like creature" as Dimetrodon.
The printed name of the Dimetrodon is "Dimetrodon like creature".

The Description of The Dimetrodon is "This Creature looks very similar to the extinct  Permian stem-mammal known as a Dimetrodon. Complete with a [sail] and two clearly different types of [teeth]. Yet the most notable difference between this creature and its Terran look alike is the  three long ant-like [antennas] growing out of its head. [if Dimetrodon is alive]It seems to mine its own business and seems to pose no threat to you. Looks like it likes hanging out around the lake[otherwise]It is now dead[end if]."
		
Sail is part of Dimetrodon. The description of the sail is "Very similar to the sail of an actual Dimetrodon. Its dorsal spins are even sticking out of the top." 
The Antennas are part of Dimetrodon. The description of The Antennas is "Growing out of top of the creature's head are three large and long ant-like Antennas. You know for a fact that the real dimetrodons did not have that, probably."
Teeth are part of Dimetrodon. The description of Teeth is "Just like its counterpart on Early Permian Earth, it has large canines in the front and smaller uniformish teeth in the back."
Understands "dimetrodon teeth" as teeth. understands "dimetrodon antennas" as antennas. understands "dimetrodon sail" as Sail.

Dimetrodon meat is a thing. The description of dimetrodon meat is "This is the meat from the dimetrodon-like creature you shot."

instead of attacking the dimetrodon when the dimetrodon is alive:
	say "That probably is not a good idea. It will almost surely kill you."

instead of pushing dimetrodon to a direction:
	if dimetrodon is alive:
		try attacking dimetrodon;
	otherwise:
		say "[one of]Destipe it's wight, mass and the sand, you still are able to move its corpse across the desert[or]With all your strength you move the dead creature [second noun]wards[stopping].";
		continue the action;
		
Instead of pushing dimetrodon:
	if dimetrodon is alive:
		try attacking dimetrodon;
	otherwise:
		say "[one of]Destipe it's wight, mass and the sand, you still are able to push[or]With all your strength you move the dead creature just a little bit[stopping].";
	
Instead of pulling dimetrodon:
	if dimetrodon is alive:
		try attacking dimetrodon;
	otherwise:
		say "[one of]Destipe it's wight, mass and the sand, you still are able to drag[or]With all your strength you move the dead creature just a little bit[stopping].";
		
to say dimetrodon day idle text:
	say "[one of]is basking in the setting light of the sun, peacefully[or]is approached by a bird looking creature. It just looks at the bird thing scaring it away[or]It briefly turn to look at you, before returning to mining it own bussiness[or]It looks over at the planet's setting star and sighs[in random order]";
		
Every turn when Dimetrodon is visible and Dimetrodon is alive:
	if starset is happening:
		say "The Dimetrodon like creature [one of]is basking in the setting light of the sun, peacefully[or]is approached by a bird looking creature. It looks at the bird, scaring it away[or]It briefly turn to look at you, before returning to mining it own bussiness[or]It looks over at the planet's setting star and sighs[in random order].";
	otherwise:
		say "The Dimetrodon like creature [one of]wonder arounds the oasis[or]looks up at the stars[or]looks at you[if The Location of Mabel is the lakeside oasis] and Mabel[end if][or]looks a bit sleepy[at random].";

Section - Crab

The Crab is an animal.

The Description of The Crab is "This 'Crab' has six legs instead of eight (or ten like the ones on Arkonkia) and seem to be just fine walking around in the [if starset has not ended] dry heat of the desert. Though it is dusk, so it is cooling off [otherwise] cold desert [end if]. But besides all of that, it looks like a normal Crab."

Instead of an actor taking the Crab:
	if Crab is alive:
		say "You tried to catch the crab, but [one of]scurries[or]moves[or]scampers[purely at random] away to quickly.";
		crabMoves;
	otherwise:
		continue the action;
		
instead of an actor attacking crab:
	if Crab is alive:
		try actor taking the Crab;
	otherwise:
		continue the action;
		
Instead of pushing Crab:
	if the Crab is alive:
		try taking the Crab;
	otherwise:
		say "Okay? You push the crab. Nothing unexpected happens.";
		
instead of pulling the Crab:
	if Crab is alive:
		try taking the Crab;
	otherwise:
		say "Okay? You drag the crab. Nothing unexpected happens.";
		
carry out shooting crab with something:
	unless crab is dead or a random chance of 1 in 5 succeeds:
		say "The Crab [one of]scurries[or]moves[or]scampers[purely at random] away.";
		crabMoves;
	otherwise:
		continue the action;

Every turn when Crab is alive:
	crabMoves;
	if the player can see the Crab, say "The crab [one of]crawls along on the dry sand[or]scurries on by[or]stroll about, only briefly pausing to take a look at you before scampering away[or]digs in the sand looking for food[or]takes a little break in the shade[purely at random].";

To crabMoves:
	if Crab is in a room (called the current space):
		let next space be random room which is adjacent to the current space;
		if next space is Entrance:
			now next space is Lakeside Oasis;
		otherwise if next space is the Pod Interior:
			now next space is Empty Desert;
		if Crab is visible, say "The crab-like creature heads offs.";
		move Crab to next space;
		if Crab is visible, say "The crab-like creature wanders around the area.";
		

Chapter - Plasma Blaster

A plasma blaster is a kind of device. A plasma blaster is usually switched on.

Section - Safety

Turning safety on is an action applying to one carried thing.
Turning safety off is an action applying to one carried thing.
Understand "turn on the safety of [a plasma blaster]" as Turning safety on.
Understand "turn on safety of [a plasma blaster]" as Turning safety on.
Understand "turn the safety of [a plasma blaster] on" as Turning safety on.
Understand "turn safety of [a plasma blaster] on" as Turning safety on.
Understand "switch on the safety of [a plasma blaster]" as Turning safety on.
Understand "slide the safety of [a plasma blaster] on" as Turning safety on.
Understand "slide safety of [a plasma blaster] on" as Turning safety on.
Understand "click the safety of [a plasma blaster] on" as Turning safety on.
Understand "turn off the safety of [a plasma blaster]" as Turning safety off.
Understand "turn off safety of [a plasma blaster]" as Turning safety off.
Understand "turn the safety of [a plasma blaster] off" as Turning safety off.
Understand "turn safety of [a plasma blaster] off" as Turning safety off.
Understand "switch off the safety of [a plasma blaster]" as Turning safety off.
Understand "slide the safety of [a plasma blaster] off" as Turning safety off.
Understand "slide safety of [a plasma blaster] off" as Turning safety off.
Understand "click the safety of [a plasma blaster] off" as Turning safety off.

Toggling safety is an action applying to one carried thing.
Understand "toggle the safety of [a plasma blaster]" as Toggling safety.
Understand "toggle safety of [a plasma blaster]" as Toggling safety.
Understand "slide the safety of [a plasma blaster]" as Toggling safety.

Check Turning safety on:
	if the noun is not a plasma blaster:
		say "[the noun] does not have a safety mechanism of any kind." instead;
		
Check Turning safety off:
	if the noun is not a plasma blaster:
		say "[the noun] does not have a safety mechanism of any kind." instead;
	
Carry out Turning safety on:
	try switching on the noun;
	
Carry out Turning safety off:
	try switching off the noun;
	
Check Toggling safety:
	if the noun is not a plasma blaster:
		say "[the noun] does not have a safety mechanism of any kind." instead;

Carry out Toggling safety:
	if the noun is switched on:
		try switching off the noun;
	otherwise:
		try switching on the noun;

report switching on plasma blaster:
	say "You turn the safety of [the noun] on." instead;
	
report switching off plasma blaster:
	say "You turn the safety of [the noun] off." instead;
	

Instead of examining a plasma blaster(called the weapon):
	say "[The description of weapon][paragraph break]";
	if the weapon is switched on:
		say "The [weapon]'s safety is turned on.";
	otherwise:
		say "he [weapon]'s safety is turned off.";

Section - Shooting it with

Shooting it with is an action applying to one visible thing and one carried thing.
Understand "shoot [something] with [something preferably held]" as shooting it with.
Understand "shoot at [something]with [something preferably held]" as shooting it with.
Understand "fire at [something] with [something preferably held]" as shooting it with.
Understand "shoot [something preferably held] at [something]" as shooting it with (with nouns reversed).
Understand "fire [something preferably held] at [something]" as shooting it with (with nouns reversed).

Check shooting it with:
	if the second noun is not a plasma blaster:
		say "That is not even something you can shoot with." instead;
	if the noun is the player:
		say "Are you suicidal?" instead;
	if the second noun is switched on:
		say "You tried to pull the tigger, but you can't. You remember that you have the safety on. Try 'turn off the safety of [second noun].'"instead;
	
Carry out shooting it with:
	if noun is a person:
		if the noun is an animal:
			if Feeding the Grue is happening: 
				if the noun is alive:
					say "Pew shiew!";
					now the noun is dead;
					say "You hit [The noun]. [regarding the Noun][They] [if the noun is the Dimetrodon]lets out an other worldly roar as it [end if]collapses to the ground.";
				otherwise:
					say "[The noun] is already dead. That be wasting your ammo.";
			otherwise:
				say "It probably best to try limiting your impact on this ecosystem, which you know nothing about. "; 		
		otherwise:
			say "Pew shiew!";
			if a random chance of 7 in 8 succeeds:
				if the second noun is an consortium blaster rifle:
					let damage be a random number between 1 and a random number between 5 and 9;
					decrease the current hit points of the noun by damage;
					say "You hit [refer to the noun]:  [The noun health after damage]";
				otherwise:
					let damage be a random number between 3 and 8;
					decrease the current hit points of the noun by damage;
					say "You hit [refer to the noun]:  [The noun health after damage]";
				finger if the noun is dead;
			otherwise:
				say "You missed!";
	otherwise:
		if noun is the knob and the knob is portable:
			say "Pew shiew![line break]You hitted it.";
		otherwise:
			say "Pew shiew![line break]You [one of]burn[or]miss[or]graze[or]barely singe[at random] it.";
	if the noun is an Avisurites:
		if the noun is undefeated:
			if a random chance of 1 in 12 succeeds:
				try noun attacking the player;
			otherwise if the noun carries a Plasma Blaster:
				let the gun be a random plasma blaster carried by the noun;
				if the gun is not nothing:
					try the noun shooting the player with the gun;
			otherwise if a random chance of 2 in 3 succeeds:
				try noun attacking the player;
		now hasAttack of the noun is true;
		
instead of shooting Wildlife with something:
	If Feeding the Grue is happening:
		Say “What are you, a mad proacher? You can not kill all the wildlife in the desert. Try hunting some of the animals around the Fort. Or maybe go find that fruit.” instead;
	otherwise:
		Say “You think about going hunting, but you do not want to waste your ammunition by shooting your baster at wildlife when they are proposing a threat to you just yet. Plus it is probably best to try limiting your impact on this ecosystem you know nothing about.”instead;
		
instead of shooting Creatures along the shoreline with something:
	say "If you shoot one of them, you will not be able to get it without being attacked by the others." instead;
			
Carry out an actor that is not the player shooting a person (called the target) with something:
	if second noun is switched on:
		now the second noun is switched off;
	say "Pew shiew!";
	if the target is the player:
		say "[actor] takes a shot at you.";
	otherwise:
		say "[actor] shots at [the target].";
	if (actor is Mabel and a random chance of 9 in 10 succeeds) or (actor is an Avisurite and a random chance of 7 in 10 succeeds):
		if second noun is an consortium blaster rifle:
			let damage be a random number between 1 and a random number between 5 and 9;
			decrease the current hit points of the target by damage;
			say "[The target has been] hit: [the target health after damage]";
		otherwise:
			let damage be a random number between 3 and 8;
			decrease the current hit points of the target by damage;
			say "[The target has been] hit: [the target health after damage]";
		finger if the target is dead;
	otherwise:
		say "[actor] missed [refer to the target].";
	if the actor is Mabel and the target is an undefeated avisurite:
		if a random chance of 1 in 12 succeeds:
			try target attacking the Mabel;
		otherwise if the target carries a Plasma Blaster:
			let the gun be a random plasma blaster carried by the noun;
			if the gun is not nothing:
				try the target shooting the Mabel with the gun;
		otherwise if a random chance of 2 in 3 succeeds:
			try target attacking the Mabel;
	if the actor is an avisurite:
		now hasAttack of actor is true;

Shooting it is an action applying to one visible thing.
Understand "shoot [something]" as shooting it.
Understand "shoot at [something]" as shooting it.
Understand "fire at [something]" as shooting it.

Check shooting it:
	if the player does not carry a plasma blaster:
		say "You are not armed." instead;
	if the noun is the player:
		say "What, are you suicidal?" instead.

Carry out shooting it:
	if the player carries blaster pistol and blaster pistol is switched off:
		try shooting the noun with blaster pistol;
	otherwise if the player carries spare blaster and spare blaster is switched off:
		try shooting the noun with spare blaster;
	otherwise:
		repeat with arm running through plasma blasters carried by the player:
			if arm is switched on:
				try shooting the noun with arm;
				rule succeeds;
		if the player carries blaster pistol:
			try shooting the noun with blaster pistol;
		otherwise if the player carries spare blaster:
			try shooting the noun with spare blaster;
		otherwise:
			try shooting the noun with a random plasma blaster carried by the player.


Chapter - Knife

A knife is a kind of thing.

section - cutting

The block cutting rule is not listed in the check cutting rules.
Understand "cut [something]" as cutting.

carry out of cutting coconut-thing:
	now the fruit flesh is in the location;
	now coconut-thing is nowhere;
	say "You slice the weird coconut like fruit or vegetable or whatever in half. Inside you find, instead of the white meat or water of a coconut, but flesh is strangely more like that of a pineapple. You crave out the yellow juicy fruit flesh out of the shells and put it into your pack. And toss the shells aside.";
	try taking fruit flesh;
		
Check cutting something:
	if the player does not have a knife:
		say "You can't cut anything very well without a knife." instead;
	if the noun is the player:
		say "That would be very dumb." instead;
	if the noun is an Avisurite:
		try attacking the noun;
	if the noun is not an animal and the noun is not hyperspace radio parts and the noun is not coconut-thing and the noun is not weird plant:
		say "What would be the point of cutting that." instead;
	
Carry out cutting an animal (called the target):
	if the target is dead:
		if target is dimetrodon:
			now dimetrodon is nowhere;
			say "You have cut the dimetrodon into smaller easier to carry pieces. Which you put in your pack.";
			now the player carries dimetrodon meat;
		otherwise:
			say "You cut into the [target] with your knife. Nothing unexpected happens.";
	otherwise:
		say "You have to catch it first." instead;
		stop the action;
	
section - picking
	
Picking is an action applying to one thing.
Understand "pick [something]" as picking.

check actor picking a something (called target):
	if the target is not a lockable door:
		say "You can not pick that." instead;
	if the actor does not carry the multitool knife:
		say "You need your multitool to pick that lock." instead;
	
carry out an actor picking a door (called target):
	if target is locked:
		try actor unlocking the target with the multitool knife;
	otherwise:
		try actor locking the target with the multitool knife;	
		
after an actor picking a door (called target):
	if the target is lockable and the target is unlocked:
		if the the target is visible, say "[The target] opens.";
		now the target is open;
	
section - unscrew
	
Understand the command "unscrew" as something new. Understand the command "screw" as something new. 	
Unscrewing is an action applying to one visible thing. Understand "unscrew [something]" and "screw [something]" as unscrewing.

A thing can be screwable or unscrewable. A thing is usually unscrewable.

Check unscrewing:
	if the player does not have a knife:
		say "You have nothing to do that with." instead;
	if noun is the player:
		say "Don't you think you already have enough loose screws?" instead;
	otherwise if the noun is Mabel:
		if the noun is asleep:
			try attacking Mabel instead;
		otherwise:
			say "[one of]What? What kind of sick weirdo are you? Oh, you mean with that? Well s[or]Why? s[stopping]he has enough screws loose for the both of you already. Perhaps you should be tightening some of your own metaphorical screws instead." instead;
	otherwise if the noun is a person:
		say "Why? [Regarding the noun][they] are a living thing, not a robot probably. Regardless, [Regarding the noun][they] probably have enough screws loose already." instead;
		
Carry out an actor unscrewing something:
	if the noun is unscrewable:
		if the noun is the hyperspace radio parts:
			if actor is visible, say "That probably not a good idea, you probably need the remaining screws.";
		otherwise if the noun is the knob:
			say "You have already unscrewed it.";
		otherwise:
			say "That does not have any screws.";
		stop the action;
	otherwise if the noun is hyperspace radio parts:
		say "[refer to the actor] remove all the screws keeping the parts you need in place.";
		if the noun is uncutted:
			if actor is visible, say "[refer to the actor] try pulling the them out, but they are still wired in.";
			if control panel #4 is switched on:
				if Starset has ended and the Actor is the player:
					say "You ask Mabel to turn off the Panel for you, as you prepare to cut the wires.";
					try Mabel switching off panel #4;
				otherwise if Starset has ended and the Actor is Mabel and Mabel is not visible:
					try Mabel switching off panel #4;
				otherwise if Starset is happening:
					say "You reach up and switch off the Control Panel.";
					Now control panel #4 is switched off;
		otherwise:
			now hyperspace radio parts is portable;
			if the actor is the player:
				say "You take each of the part that you need and put them in your pack.";
			otherwise if the actor is Mabel and Mabel is visible:
				say "Mabel takes all the parts in the pocket of her grown.";
			silently try the actor taking the noun;
		now noun is unscrewable;
	otherwise if noun is knob:
		now the knob is portable;
		say "You unscrew the knobs of the wooden door and pocket it away in your pack.";
		silently try taking the noun;
		now noun is unscrewable;
		now the wooden door is unlocked;
		now the wooden door is not lockable;
	otherwise:
		say "Okay, this doesn't make anysense."

	
Part - The World

Chapter - Characters

Section - Player/Mason

Understands "Lietenuat Mason" and "Mason" as yourself.
The Description of yourself is "You are Lietenuat Mason Pinoideae, a young officer of the Democratic Federation military. You are as good looking as ever."

The maximum hit points of the player is 60.

The player holds 20 rations and a family photo.

The Description of family photo is "A picture of your family taken when you were younger. You, your twin sister[if Mabel is awake] Crown Princess Mabel[end if], your father [if Mabel is awake]the King of Arkonkia[end if]and your mother[if Mabel is awake] the Queen-consort[end if]. Destipe being very well off, your family had always lived very modestly, relatively speaking. But for some reason, your parents decided to show off their wealth that day. [if Mabel is asleep][one of]You think about your sister and hope she is doing okay[or]You take a good look at your sister in the picture. You and her have always had a very strong family resemblance[or]You take another close look at your sister. You have not had a chance to see you since coming back from the war. Hopefully that all going to change soon[stopping][otherwise]You are happy to see your sister again.[end if]."

The blaster pistol is a plasma blaster. The Player holds blaster pistol. The Description of blaster pistol is "This is an extremely complicated weapon that fires a bolt plasma at something, in the form of a handgun. Please be careful and remember basic gun safety. Though you fought in a war, you do not have to be reminded of that, right?"
The multitool knife is a knife. The player holds multitool knife. The description of multitool knife is "A very handy multitool with fancy gadgets and stuff. It has a regular old knife blade of course. Be careful with it. It is sharp. It also has a small saw blade, various types of screw driver heads and something that no one is really sure what it’s suppose to do but it seems to be very good at picking the locks of some doors, but not others."

The spare blaster is a plasma blaster. The Player carries spare blaster. The Description of spare blaster is "This blaster pistol is used to belong to one of your fallen comrades."

[Federation Miliitary Uniform is clothing. The player wears Federation Military Uniform. The description of Federation Military Uniform is "This is a standard blue uniform of the servemen and women of the Democratic Federation Military.";]

[Does the player mean shooting something with the The blaster pistol: it is very likely.
Does the player mean shooting something with the The spare blaster: it is likely.]
[Does the player mean turning safety on The blaster pistol: it is very likely.
Does the player mean turning safety on The spare blaster: it is likely.]
[Does the player mean turning safety off The blaster pistol: it is very likely.
Does the player mean turning safety off The spare blaster: it is likely.]
[Does the player mean toggling safety The blaster pistol: it is very likely.
Does the player mean toggling safety The spare blaster: it is likely.]
Does the player mean doing something with the Mouth of entrance: It is very unlikely.


Section - Grue

The Grue is a person. Loincloth is clothing. The Grue wears Loincloth. The Description of the Grue is "The Grue is cowarding before the light. He holds left hand flat up against its forehead above its eyes and in its right it carries some kind of staff. It wears a [loincloth] and"

The Grue's staff is a thing carried by the Grue. The Description of the Grue's Staff is "A tall staff. It is made out of some kind of bronze colored material."

before attacking Grue:
	say "The Grue can probably take you. Then he will eat you. [if feeding the grue has not ended][first time]Perhaps you should try shooting at it or making a deal.[only][end if]";
	stop the action.
	
instead of pushing Grue:
	try attacking Grue;
	
instead of pulling Grue:
	try attacking Grue;
	
instead of cutting Grue:
	try attacking Grue;
	
Carry out shooting the Grue with something:
	say "Your shot hits a force field that surrounds the Grue. They laughed a deep grunting laugh. Perhaps you should try talking to him. Most Grues are very reasonable people, as long as they are not too hungry.";
	stop the action.
	
to dissatisfiedTheGrue:
	say "The Grue appears to be dissatisfied with [the noun] you offer him and gives it back to you.";

instead giving something to the Grue:
	if hasGrueBeenGivenDimetrodon is true:
		say "The Grue informs you that he is stuffed.";
		stop the action;
	otherwise if isGrueFeed is true:
		if the noun is an animal or the noun is a fallen fruit:
			say "The Grue is take [the noun] and eats it.";
			now the noun is nowhere;
		otherwise:
			dissatisfiedTheGrue;
			stop the action;
	otherwise if the noun is coconut-thing:
		say "After taking the coconut-thing, the Grue looks at it. He then throws it back at you saying, 'Cut it open.'";
		stop the action;
	otherwise:
		if the noun is Dimetrodon or the noun is Dimetrodon Meat or the noun is fruit flesh:
			say "The Grue takes [the noun].";
			continue the action;
		otherwise if the noun is an animal or the noun is a fallen fruit:
			say "The Grue takes [the noun] and eats it. But unfortunately he informs you with its mouth full while it is ‘very tasty’, it does not satisfy him enough to let you pass. You look down at your feet in failure.[paragraph break] Try returning with something else, maybe something [bold type]big[roman type] or something very very [bold type]nuts[roman type].";
			now the noun is nowhere;
			stop the action;
		otherwise:
			dissatisfiedTheGrue;
			stop the action;

To say Grue Devoured Dimetro Text:
	Say “The Grue devoured the dimetrodon-like creature. It is a very, well gruesome slight. But you’d seen worse than this.”;
					
Before giving the Dimetrodon to the Grue:
	now the Player carries the Dimetrodon;
		
after giving the Dimetrodon to the Grue:
	now the Dimetrodon is nowhere;
	if  isGrueFeed is false:
		say "[Grue Devoured Dimetro Text] Afterwards the grue sits down, pats his stomach and asks you why you were watching him eat. You are not quite sure yourself. You guess it was just a fascinating slight.";
		now isGrueFeed is true;
	otherwise:
		say "[Grue Devoured Dimetro Text] Afterwards the grue sits down and patting his stomach. 'Thanks, now I am full' He tells you.";
	now hasGrueBeenGivenDimetrodon is true;
	
After giving the Dimetrodon Meat to the Grue:
	now the Dimetrodon Meat is nowhere;
	if  isGrueFeed is false:
		say "The Grue devoured the meat. After he finished, he pats his belly and let you known you can now pass.";
		now isGrueFeed is true;
	otherwise:
		say "The Grue devoured the meat. Afterwards the grue sits down and patting his stomach. 'Thanks, now I am full,' He tells you.";
	now hasGrueBeenGivenDimetrodon is true;
	
before showing the Dimetrodon to the grue:
	now the Player carries the Dimetrodon;
	
instead of showing something to the grue:
	try giving the noun to the grue;

To say grue-deal-text:
	say "[if isGrueFeed is false]Your Grueish is a bit rusty, but after talking with the Grue for a while, you both seem to come to an agreement. He will let you into the fort if you feed him something. You think it’s specifically asking for two kinds of chewing(?). You have no idea what that means so you ask if there is anything else he would want.  Then it asks for fruit or vegetable or a nut from the bush. It sounds like he will only let you in if you give it a certain kind of animal or a certain kind of fruit-like thing.[otherwise][one of]'You already fully filled your half of the deal.' the Grue tells you.[or]'Thank you. You are now free to pass.'[purely at random]";

To say grue-dimetro-text:	
	say "[if hasgruebeengivendimetrodon is false]'Yes, two kinds of chewing,' the Grue says.[otherwise]'Two kinds of chewing is a filling mean,' The Grue replies.[end if]";

Table of Grue Responses
topic			reply
"letting me in" or "letting me pass" or "letting me enter"			"[grue-deal-text]"
"let me in" or "let me pass" or "let me enter"			"[grue-deal-text]"
"dimetrodon" or "Dimetrodonoid" or "Dimetrodon like creature" or "Dimetrodon-like creature"			"[grue-dimetro-text]"
"Two kinds of chewing" or "teeth or chewing" or "two kinds of teeth"			"[grue-dimetro-text]"
"two measures of chewing" or "two measures of teeth" or "two sizes of teeth" or "two sizes of chewing"		"[grue-dimetro-text]"
"deal/agreement" or "making a deal" or "making an agreement"			"[grue-deal-text]"
"food/hungry/eat" or "Are you hungry"			"'I am hungry,' It says 'I can eat anything, but I want something specific. Do you want something? Perhaps we can make arrangement.' You think that what it says."
"princess/mabel/twin/arkonkia" or "my planet" or "I am here to save my sister"			"[if Mabel is asleep]You think the Grue says something along the lines of 'You are here for Princess. Good luck. Pay too good. But, maybe we can make a deal?'[otherwise if Mabel is in the location of the Grue]The Grue goes, 'So this is your sister, eh?'[otherwise]'Hey where is your sister?' the Gure asks you. You tell her where she is at and what she is doing and the Grue replies, 'Ohhh I see.'[end if]"
"war/teaty/laws/empire/politics/ambassador/secetary-general"			"It appears that since he is a mercenary and from another galaxy he claims he does not care about any of that stuff."
"hobbies/fun"			"The Grue says 'Eating. Cooking. Sleeping. Hunting. Thinking. Philosophy. '"
"grue/schoolar/schoolars/mercanary/mercanaries/grues/cooks/cook/chefs/chef/lurk/itself/himself/themself"			"'I am a Grue,' it says proudly. 'We lurk. We wait. We eat. We survive. We are Philosophers, Scholars, Chefs and Mercenaries'."
"home" or "grue home world"			"'Far away. Small world. Dim skies, red star. One half cook. Other side dark, lovely and beatiful, but frozen. In between comfortly.' It mutters."
"light/afraid/fear/scared/sun"			"'Light is scary,' The Grue explains, 'Our star is dangerous. Plus hurt eyes.'"
"job/work/holdout/tunnel/fort"			"'I am a mercenary.' the Grue says, 'they pay me good to guard fort.'"
"dark/darkness/shadow"			"'Comfort.' Grue's voice sounds dreamingly. 'Safe.'"
"warm/twilight/peace"			"'Peaceful' the Grue sighs. 'comfortable.'"
"desert/heat/uncomfortable"			"'Desert is uncomfortable,' The Grue groans. 'I do not like heat or light. But not too bad.'"
"federation/state/president/chancellor/senate" or "Democratic Federation"			"They claim not to care about this Federation’s politics."
"king/queen/kingdom/paraliment/PM" or "prime minister"			"He claims not to care about your people's politics."
"consortium/speaker" or "grand speaker" or "supreme council" or "Syndicated Consortium"			"He claims they do not care about the politics of the consortium."
"cold"			"'Cold is nice, in moderation that is.' The Grue replies."
"milkway" or "What are you doing here"			"You think he tells you that he came to this galaxy to find work."
"god/devil"			"'Long ago we Grues thought Milk Way was god and host star was devil.'"
"leader/government/emperor" or "supreme leader"			"He says some along the lines of he hasn't been in contact with the grue home world for a long time, so he doesn't know who the current Emperor of the Grues is."
"eyes"			"'My eyes hurt, thank you very much', You tell the Grue sorry."
"Philosophy/thinking/philosopher"			"'I enjoy philosophy myself. Too bad your gruish is bad. Else I would share with you. Gruish is best language for philosophy.'"
"avisurites/avisurite"			"'Avisurites are not very good eating. Only eat if necessary or extremely annoyed. But these one pay good money and share food.'"
"hunting/sleeping/cooking"			"The Grue does not seem to have much to say about that."
"human/me/mason/you/I/annoying/bug"			"You humans are not very good eating. Only eat if necessary or extremely annoyed."
"doc/doctor/med/mother/mom/ma" or "birth parent"			"'My mother was a doctor,' The Grue replies."
"name"			"It seems he does not want to give you his name."
"age/old"			"You think he’s saying he is 3195 years old. You have no idea what kind of years he is talking about though."
"what"			"He sounds like he thinks you need to work on your listening skills."
"yes"			"The Grue looks at you confused. 'Yes to what?' they growl."
"no"			"The Grue looks at you confused. 'No to what?' they say back to you."
"sorry"			"The Grue becomes puzzled. 'What are you telling me sorry for?'"
"thanks/thx"			"[if the isgruefeed is true]'Your welcome', The grue replies you[otherwise]'Thanks for what?',the Grue asks you confused[end if]."

instead of tasting the Grue:
	say "That would probably brother the Grue a little too much.";
	
instead of smelling the Grue:
	say "Unexpectedly he smells like mint.";
	
instead of listening to the Grue:
	say "The Grue is not making a lot of noise.";
	
instead of hugging the Grue:
	if Feeding the Grue has not ended:
		say "That probably not a good idea.";
	if Night is happening:
		say "The Grue probably does not want a hug.";
	otherwise:
		continue the action;
		
after of hugging the Grue:
	say "The Grue says something in Gruish you believe is along the lines of '[one of]Is this how your people's culture say thank?[or]Please not agian.[stopping]'"

Section - The Princess

Mabel is asleep woman. Understands "fraternal twin sister", "fraternal twin", "twin", "twin sister", "sister", "Crown Princess Mabel", "Crown Princess", "Princess Mabel", "Princess" and "Other Half" as Mabel. 

The description of Mabel is "[if Mabel is asleep]She is a very beautiful young lady not that much older than you. Though she clearly has not been able to clean herself up in the past week or so, she still looks as good as ever. Her long wavy soft brown hair cascades down her shoulders and over her chest. [one of]She’s very obviously an Arkonkian as she has green skin. A trait found in the majority of 'indigenous' Arkonkians. One of countless (and by far the most obvious) mutations that led to the creation the (proposal) human subspecies of [italic type]Homo Sapiens Arkonkiais[roman type] in the centuries of genetic drift between the colonist ships carrying what would become the first Arkonkia got stuck into a wormhole and Democratic Federation first making contract with the new civilization that formed on Arkonkia[or]Like most Arkonkian humans she has green skin[stopping]. She wears a simple aquamarine gown and her feet are bare[otherwise]This is your twin sister, Mabel, the Princess of Arkonia. She is a very beautiful young lady, she has long cascading waves of hair the same shade of dark brown as you. Also just like you she has brown eyes and middle light green skin (A common Arkonkian trait). She is wearing a plain simple aquamarine grown. Though she clearly has not been able to clear herself up in the past week or so, but, just like you, she looks as good as ever[end if]."
Mabel wears aquamarine grown. Aquamarine Grown is clothing. The description of Aquamarine Grown is "It is just a simple plain aquamarine color dress, not too fancy. Well the material might be a bit pricey, but it’s very modest, simple and plain design."  Understands "Mabel's dress", "Aquamarine Dress", "Dress", "Mabel's Aquamarine Dress", "Mabel's Grown" and "Mabel's Aquamarine Grown" as Aquamarine Grown. 

the maximum hit points of Mabel is 50;

Instead of listening to Mabel:
	if Mabel is awake:
		say "[one of]She is quite[or]You hear her humming the tune of the Anthem of the Democratic Federation[or]She hums the Arkonkian national Anthem[or]You can hear her breathing[or]She make random noises[purely at random].";
	otherwise:
		say "She has always been a quiet sleeper.";
	
Instead smelling Mabel:
	say "By her smell you can tell that she hasn't taken a bath in a long time.";
	
Instead of tasting Mabel:
	if Mabel is asleep:
		try kissing Mabel;
	otherwise:
		say "What kind of weirdo are you? Licking your sister."
		
To say MabelAvisuriteInsult:
	say "[one of][one of]avian[or]reptilian[or]dinosaur[or]archosaurian[or]dromaeosaurid[or]hawkish[or]dinosauran[or]dinosauroid[or]theropodan[or]therodonoid[or]dromaeosauridoid[or]saurischian[or]war loving[or]peace hating[or]cry bady[or]war hawk[or]velociraptor[at random] [one of]freaks[or]fiends[or]idiots[or]fools[purely at random][or]goofy looking velociraptors[or]lizards[or]lizard birds[or]bird lizards[or]birds[as decreasingly likely outcomes]";

To say MabelBattleQuips:
 say "[one of]'Brother look out.'[or]'Behind you.'[or]'Die! Die! Die![one of][or]you [MabelAvisuriteInsult][or]Die![as decreasingly likely outcomes]'[or]'This is what you get when you kidnapped me.[no line break]'[or]'The War is over you [MabelAvisuriteInsult][one of]!!!![no line break][or] you hear meee!!!???[no line break][or]. So accept that or, well.[no line break][then at random][no line break]'[or]'Wacth out.'[or]'Mason look behind you.'[or]'You want me come. Then come and get me.'[or]'No one allow to mess with me is my brother here. And I am the one allow to mess with him is me. [first time]And his girlfriend.' You whipser in her imforming to her that you two actually broke up. 'Oh, I am sorry,' She tells you before turning back to the Avisurite[if the number of Avisurites in the location of the player is greater than 1]s[end if], 'He is the only one allow to mess with me and I am the only one allow to mess with him.'[only][or]'Hey, Mason look out.'[in random order]"

To have Mabel fight:
	let the target be a random avisurite in the location of the Mabel;
	let did Mabel mabel quip be false;
	unless the target is nothing:
		if a random chance of 3 in 5 succeeds:
			say "[one of]Mabel says, [MabelBattleQuips][or]Mabel goes, [MabelBattleQuips][or]Mabels yells, [MabelBattleQuips][purely at random]";
			now did Mabel mabel quip is true;
		if a random chance of 6 in 7 succeeds and Mabel carries a plasma blaster:
			if Mabel carries the spare blaster:
				try Mabel shooting the target with the spare blaster;
			otherwise:
				try the target shooting Mabel with a random plasma blaster carried by target;
		otherwise:
			let current space be the location of Mabel;
			if a random chance of 1 in 5 succeeds and the number of plasma blasters in current space > 0:
				try Mabel taking a random plasma blaster;
			otherwise:
				try Mabel attacking target;
				if a random chance of 5 in 6 succeeds and spare blaster is in the current space:
					try Mabel taking spare blaster;
				otherwise if a random chance of 1 in 2 succeeds and number of plasma blasters in the current space > 0:
					try Mabel taking a random plasma blaster;
		if a random chance of 1 in 8 succeeds and did Mabel mabel quip is true, say "You are starting to think she is enjoying this way too much.";
				
Can Mabel attack is a truth state that varies. Can Mabel attack is usually false.
Did Mabel fixed the Radio is a truth state that varies. Did Mabel fixed the Radio is usually false.
Boring Mabel is a number that varies. Boring Mabel is 0.
Did Mabel do something is a truth state that varies. Did Mabel do something is usually false.
Did Mabel Steal Parts is a truth state that varies. Did Mabel Steal Parts is usually false.

Before giving Hyperspace radio parts to Mabel:
	if Fixing the Radio is happening:
		say "Mabel looks at the parts as you hold them out to her, 'Oh, you want me to fix it? Okay then, I would love to,' she says taking them from you.";
	otherwise:
		say "'I will be happy to carry them for you brother,' she says as she takes them from you.";
	now Did Mabel do something is true;
	
To say PromptPlayerToAnswerMabel:
	say "([one of]Answer Mabel by entering[or]Enter[stopping] [bold type]YES[roman type] or [bold type]NO[roman type]) >".
		
To have Mabel cut parts:
	if the control panel #4 is switched on:
		if Mabel is visible and a random chance of 1 in 2 succeeds:
			say "Mabel says, 'Oh, wait. Mason can you turn the Communications off for me pleases [command clarification break][PromptPlayerToAnswerMabel]";
			if the player consents:
				try the player switching off control panel #4;
			otherwise:
				say "'Okay then, I do it myself,' she sighs as she reaches up to flip the switch turning it off. She then proceed to cut the wires.";
				try Mabel switching off control panel #4;
		otherwise if a random chance of 4 in 5 succeeds:
			if Mabel is visible, say "Mabel reaches up to flip the switch turning it off before cutting the wiring.";
			try Mabel switching off control panel #4;
	try Mabel cutting hyperspace radio parts;
	if a Hyperspace radio parts are portable and a random chance of 3 in 5 succeeds:
		try Mabel taking hyperspace radio parts;
		
Requesting is an action applying to one thing.

Carry out Mabel requesting the multitool knife:
	say "Would you like her to get the multitool knife for you? [command clarification break][PromptPlayerToAnswerMabel]";
	if the player consents:
		say "'If you really want to' you tell her. She nods her head up and down very enthusiastically. You hand over the multitool knife and get out of her want.";
		try the player giving the multitool knife to Mabel;
	otherwise:
		say "You politely tell her no and turn your attention to the open wiring compartment";
		
Carry out Mabel requesting the hyperspace radio parts:
	say "Would you like her to get the parts for you? [command clarification break][PromptPlayerToAnswerMabel]";
	if the player consents:
		say "'You know that does not sound like a bad idea' you reply back to her, 'Here take it.' You hand over the parts before adding, 'Thanks Mabel.'[paragraph break]'Your welcome,' she replies.";
		try the player giving the hyperspace radio parts to Mabel;
	otherwise:
		say "You politely tell 'No, no. I am fine Sister, I can do it'[paragraph break]'Are you sure?' she asks.[paragraph break]'Yes I am,' you respond back you her.";

Every turn when Mabel is awake:
	let Mabel's curr loc be the location of Mabel;
	let charges be 2;
	if an Avisurite is in Mabel's curr loc and can Mabel attack is true:
		if a random chance of 1 in 2 succeeds:
			have Mabel fight;
			now Did Mabel do something is true;
			decrement charges;
	if Mabel asking for knife is happening and the multitool knife is not carried by the player and the multitool knife is not carried by Mabel and the multitool knife is in Mabel's curr loc:
		try Mabel taking the multitool knife;
		now askingIsOver is true;
		Now Did Mabel do something is True;
		decrement charges;
	otherwise if Mabel asking for knife is happening and Did Mabel do something is false:
		if Mabel is visible, say "Mabel looks for around for the multitool knife.";
		now Did Mabel do something is true;
		decrement charges;
	 if Mabel holds multitool knife and Exploring Command Center has ended and Stealing parts is happening:
		if Mabel is not in the fort command center:
			let the way be the best route from Mabel's curr loc to fort command center, using doors;
			try Mabel going the way;
			if Mabel's curr loc is fort command center and Mabel is visible, say "Mabel heads over to the communications control panel.";
			decrement charges;
		otherwise:
			if wiring-compartment is closed and charges > 0:
				if Mabel is visible, say "Mabel removes the protective panel cover the wiring compartment for the communication control panel.";
				silently try Mabel opening wiring-compartment;
			otherwise if hyperspace radio parts are in wiring-compartment:
				if hyperspace radio parts are uncutted and hyperspace radio parts are screwable and charges > 0:
					if Mabel is visible, say "You tell Mabel which parts you need to fixed the hyperspace radio.";
					if a random chance of 1 in 2 succeeds:
						have Mabel cut parts;
					otherwise:
						try Mabel unscrewing hyperspace radio parts;
					decrement charges;
				if hyperspace radio parts are cutted and hyperspace radio parts are screwable and charges > 0:
					try Mabel unscrewing hyperspace radio parts;
					decrement charges;
				if hyperspace radio parts are unscrewable and hyperspace radio parts are uncutted and charges > 0:
					have Mabel cut parts;
					decrement charges;
				if Mabel does not hold hyperspace radio parts and charges > 0:
					try Mabel taking hyperspace radio parts;
				if Mabel holds hyperspace radio parts:
					Now Did Mabel Steal Parts is True;
			now Did Mabel do something is true;
	 otherwise if Mabel holds Hyperspace Radio Parts and Fixing the Radio is happening:
		if Mabel is not in the Pod Interior:
			let the way be the best route from Mabel's curr loc to Pod Interior, using doors;
			try Mabel going the way;
			if Mabel's curr loc is Crashsite and the location of the player is Crashsite:
				say "Mabel disappears into the pod";
		otherwise:
			if communications housing is closed and charges > 0:
				if Mabel is visible, say "Mabel opens the housing for the communications.";
				silently try Mabel opening communications housing;
				decrement charges;
			if Broken parts are in communications housing and charges > 0:
				silently try Mabel removing the Broken parts from communications housing;
				if Mabel is visible, say "Mabel removes the broken parts from the communications housing.";
				decrement charges;
			if charges > 0:
				silently try Mabel inserting Hyperspace radio parts into communications housing;
				if Mabel is visible, say "Mabel puts the parts you stole into the communication housing and hooks them up with the rest of the communication unit.";
				Now Did Mabel fixed the Radio is True;
				try Mabel closing the communications housing;
			now Did Mabel do something is true;
	otherwise if Mabel's curr loc is not the location of the player and Bored Mabel is not happening:
		let the way be the best route from the Mabel's curr loc to the location of the player, using doors;
		try Mabel going the way;
		now Did Mabel do something is true;
	if the player is in Mabel's curr loc and Did Mabel Steal Parts is True:
		say "Mabel says, 'I got the parts, now let's go.'";
		Now Did Mabel Steal Parts is False;
	if the player is in Mabel's curr loc and Did Mabel fixed the Radio is True:
		if Mabel's curr loc is Pod Interior:
			say "'I fixed it,' Mabel says triumphantly as she turns to face you, 'Would you like to do the honors?'[paragraph break]
'I would love to,' you tell her.";	
		otherwise:
			say "Mabel has appeared and she looks to be in a very joyous and celebratory mood. 'Hey brother, guess what?' She asks you.[paragraph break]
'What?' you reply.[paragraph break]
'I fixed the pod's hyperspace radio,' She goes, 'Would you like to do the honors?'[paragraph break]
'I would love to,' you tell her.";
		now Did Mabel fixed the Radio is False;	
		now Did Mabel do something is True;
	if Bored Mabel is happening and Mabel's curr loc is Fort Command Center:
		let the chosen panel be a random fort control panel in the Fort Command Center;
		if a random chance of 6 in 10 succeeds:
			if chosen panel is switched off:
				say "Mabel switches on the [the chosen panel].";
				try mabel switching on chosen panel;
			otherwise:
				say "Mabel switches off the [the chosen panel].";
				try mabel switching off chosen panel;
		otherwise:
			say "Mabel [one of]look at [if the location of holographic displays is the Fort Command Center]the holographic displays[otherwise][the chosen panel], then over at you and then back to the panel agian[end if][or]looks at [the chosen panel][or]look at all the buttons on [the chosen panel][or]hits a random button on [the chosen panel][or]walks other to [the chosen panel][at random] while going 'Hmmmm.'";
	if Did Mabel do something is false:
		if an Avisurite is in Mabel's curr loc and can Mabel attack is true:
			if a random chance of 1 in 2 succeeds:
				have Mabel fight;
			now Did Mabel Do something is true;
		if Did Mabel do something is false and Bored Mabel is not happening and Exploring Command Center is happening:
			let prev be Boring Mabel;
			if a random chance of 1 in 20 succeeds:
				increment Boring Mabel;
			if Mabel's curr loc is Fort Command Center and Final Duel is not happening:
				increment Boring Mabel;
			if Boring Mabel is greater than prev:
				say "[BoringMabelText]";
		otherwise:
			if Did Mabel do something is false:
				say "[IdelMabelText]";
			if Boring Mabel > 0:
				if Mabel's curr loc is Fort Command Center:
					Decrease Boring Mabel by a random number between 0 and a random number between 1 and 2;
				otherwise:
					Decrement Boring Mabel;
	Now Did Mabel do something is false;
		
instead of the player going a direction when Mabel is awake:
	if a random chance of 2 in 5 succeeds and room gone to is not nothing:
		try mabel going the second noun;
		say "[paragraph break]Mabel [one of]walks[or]walks[or][one of]walks[or]goes[or]runs[purely at random][or]goes[or]runs[as decreasingly likely outcomes] [one of]ahead[or]pass[at random] of you.";
		now Did Mabel do something is true;
	continue the action;
	
to say BoringMabelText:
	say "[one of]It looks like Mabel might be getting a little bore[or]Mabel look like she getting a bit bore, watching you[or]Mabel rolls her eyes in boredom[or]Mabel fiddles with her hair[or]Mabels stands around growing inpatient[or]Mabel paces inpatiently[or]hums to her self[at random]";
	
to say IdelMabelText:
	say "[one of]Mabel hums to herself[or]Mabel fiddles with her hair[or]Mabel fiddles with her hair[or]Mabel plays with her hair[or]Mabel stands around patiently[or]Mabel hums to her self[or]You see Mabel looking down at her bare feet[or]Mabel looks around[or]Mabel stares up at the[if the location of Mabel is in Desert] beautiful night sky[otherwise] walls[end if][or]Mabel jumps up and down[or]Makes random noises[or]Mabel takes a deep breath[or]Mabel take looks at the dirty soles of her bare feet, before setting them down in dissgust[purely at random].";
		
instead of taking Mabel:
	if Mabel is asleep:
		say "'As you drag the princess out of bed, she wakes up. You stop as she rubs her eyes open. 'You know what this remembers me of'- she says -'the time I dragged you out of bed when we were kids. You remember it right, Mason? Mom was mad that we were running late for school and was yelling about how you were still in bed' She laughs. You laugh to.";
		now Mabel is awake;
	otherwise:
		continue the action;
	
instead of pulling Mabel:
	if Mabel is asleep:
		try taking Mabel;

instead of pushing Mabel:
	if Mabel is asleep:
		try taking Mabel;
		
instead of pushing Mabel to a direction:
	if Mabel is asleep:
		try taking Mabel;

After hugging Mabel:
	if Mabel is asleep:
		say "You hug her. It is not even two seconds passes before she starts fighting and struggling to break free while yelling, 'Let go of me you stupid Dinosauroid fiends.'[paragraph break]You tell her, 'Mabel, it's me Mason.' [paragraph break]She pushes you back and says very loudly, 'Mason, what the hell are you doing here?' You sssssshh her to be quiet. She was always a bit obnoxious ever since you two were little. ";
		now Mabel is awake;
	otherwise:
		say "'I love you too, Mason.' She says hugging you back.";
	
instead of kissing Mabel:
	if Mabel is asleep:
		say "You give the Princess a platonic kiss on her forehead. The Princess half awake says, 'ohhh, how sweet my dear Bobby.', pushing to her and kissing you back, right on the lips. You try to break away but her grip is too tight. When she finally realizes who is kissing her and jerks back. 'What the beeping hell,' She says, 'I understand that we are royalty and all, but seriously brother that is a little wierd.' [paragraph break] You laugh. 'Well technically I was just kissing your forehead, Mabel.' She looks at you a bit puzzled. 'you were the one to make it weird.'[paragraph break]'Oh my stars, I thought you were, wait that was dream,' She looks around, 'Dang it, I am still here.'[paragraph break]'It appears so.,' you reply.[paragraph break]'Mason, I , I, I' She is so flustered she’s barely able to speak, 'I am so so sorry. I. I-'[paragraph break]'It's okay,' you interrupt, 'let's just move on and forget about it. We have other things to worry about.'";
		now Mabel is awake;
	otherwise:
		say "'Woe, Mason what the heck do you think you're doing?'";
	now Did Mabel do something is true;
	
Instead of attacking Mabel:
	if Mabel is asleep:
		say "'Oouh,' the Princess says sitting up right, ready to fight back. 'You think you can, wait, what the, Mason. What are you doing here?'		
		[paragraph break]
		You reply to her, 'Rescuing you. After all, we both know that even if you did have a way to get yourself out of this one, you have nowhere to go.'
		[paragraph break]
		'But, is hitting me really necessary brother?' She asks you.
		[paragraph break]
		'Probably not,' you laugh.";
		now Mabel is awake;
	otherwise:
		say "She punches you back with a laugh. 'We are not little kids anymore.'";
	now Did Mabel do something is true;
	
instead of touching Mabel:
	if Mabel is asleep:
		say "The minute you touch she shout up right awake and tackle you to the ground. 'If you touch me again, I am going to kill you [MabelAvisuriteInsult]. You hear me? You hear me...' She pauses and looks down. 'Mason, what the hell are you doing here?'[paragraph break]'Wishing you a happy birthday. What do you think I am doing here?' You tell her. 'Can you get off of me now?'[paragraph break]'Sure thing, I am sorry' She says as she slide off of you.'May I help you up?' [paragraph break]You nod yes. SHe grab your hand and help you up. Afterwards you tell her 'thanks.'";
		now Mabel is awake;
	otherwise:
		say "'Oh Mason.', She giggles, 'I think we both had outgrown this kind of stuff. Don't you?'";
	now Did Mabel do something is true;

Instead of asking Mabel for something:
	if second noun is spare blaster:
		say "'No,' she says, 'This my blaster now.'";
	otherwise if second noun is Aquamarine Grown:
		say "'What', she says offended, 'I am not going to take off my clothes for no good eason, Mason. Not on some strange planet with people after us. What kind you person asks their sister to take off their clothes anyway.'";
	otherwise:
		try Mabel giving the second noun to the player;
	now Did Mabel do something is true;
		
instead of giving something to Mabel:
	unless (the noun is Multitool Knife and (Exploring Command Center has happened and Stealing parts is happening)) or (the noun is Hyperspace Radio and Fixing the Radio is happening):
		say "'[one of]Okay[or]What oh [one of]yes[or]okay[or]yeah[or]sure thing[purely at random][or]Sure[at random], I will take this for you[one of][or][or][or][or][or] mason[or] mason[or] mason[or] brother[or] lieutenat[purely at random].' Mabel says.";
	otherwise if the noun is Multitool Knife and (Exploring Command Center has happened and Stealing parts is happening) and Mabel asking for Knife is not Happening:
		say "You ask Mabel if she would like to get the parts, and she replies 'I would be happy to.' You hand her the multitool.";
	now Did Mabel do something is true;
	continue the action;
	
instead of rubbing Mabel:
	try touching Mabel;	
	
Has Mabel seen the Grue is a truth state that varies. Has Mabel seen the Grue is  usually false;

Table of Mabel Responses
topic						reply
"sorry"					"Your sister turns to you and says,'[one of]It is okay, brother. It's not your fault.[or]You do not need to keep saying that. I understand you feel bad, but it not your  fault,[one of]mason[or]brother[or]lietaunat[then at random][stopping].'"
"no"					"She looks at you with a puzzled look. 'No what?'"
"yes"					"She looks at you with a puzzled look. 'Yes what?'"
"Game/Chess/Cribbage"					"[one of]'You know I really like to play Cribbage or Arkonian Hexagon Chess when we get back home,' she says. You tell her you like that idea to.[or]'I still can not wait for a game of either Cribbage or Arkonian Hexagon Chess.[stopping]'"
"Grue"					"[if Has Mabel seen the Grue is false]'A what?' She says in shock. 'A grue? Really. You expect me to believe there’s a Grue here[otherwise]She says, 'I did not believe you there was a Grue here when you first told me[end if].'"
"Okay"					"'I am fine, really,' brother."
"Parent/Parents/Father/Mother/Dad/Mom/Mama/Mommy/Daddy/Mum/Pop/Papa/King/Queen/Monarch/Consort"				"[one of]'Hey, speaking of that,' she responses, 'how are mom and dad?'[paragraph break]You tell her that they are both are okay. She is happy to hear that.[or]'Our parents are probably worried sick about me, right?' she asks, 'No, no. Do not tell me.'[or]'With me being kidnapped and you coming out here to save me after winning in a war, they much be going through hell', she says.[or][one of]'I am just happy they are okay,' she says.[or]Mabel tells you, 'I can not help but imagine what they must be going through right now.'[then purely at random][stopping]"
"Apple/Natives/Native/Rodent/Locals"						"[if follow the natives is happening]'That Apple was very good,' she says, 'anyway what do you think we should do? Do we should ignore them and [bold type]STAY[roman type] here, or should we [bold type]FOLLOW[roman type] and see where they are trying to lead us?[otherwise if encountering the natives is happening]I think they want you to eat the Apple.[otherwise]Mason what are you talking about. I do not see any of that here[end if]"
"shoes/feets" or “bare foot”					"[one of]'They stole my shoes, Mason,' She exclaims, 'can you believe that? They took my shoes and now I am forced to walk around bare foot.'[paragraph break]'Yeah, they tend to do that,' You explain, 'In many of their cultures stealing an article of clothing or two or even three is seen as a way of humiliating a captured foe.'[paragraph break]’Well it sure is working then,’ she snarkes[or] 'I still can not belive that took my shoes?' Mabel says.[stopping]"
"holdout/kidnapping/kidnappers"					"[one of]These people are definitely not with the Consortium, at least not after our President and their Grand Speaker signed the treaty and its subsequent ratification. They think it's unfavorable to the consortium, at least that their leader told me. Also seem she personally didn't like the Wellosa Empire mediating the peace talks since 'those tripod inhabiting cephalopodoid brian sacks' had gone from 'great conquerors' to 'total softies''[or]'I hate those [MabelAvisuriteInsult],' she says.[stopping]"
"Kawkawgrrrr/Kawkawgr"					"'Is that what they are speaking?' she says."						

To say Evil-Ending:
	say "She looks betrayed. She is betrayed. By her other half. She asks you why. You tell her, 'I am not longing the spare now, sister.' And with that you out her out of her messery.[paragraph break]
The door into the room opens. You do not turn around to see who it is. You already known who it is. You spoke to her, 'We will never speak of this again'- You turn to look at the leader of the holdout -'Ever. Understand?' Though you have no idea if or how she would ever have a chance to tell someone who would care to reveal what you did, at least one that would both believe her and actually be in a position to do anything.[paragraph break] 
'Yes your highness,' She replies to you in perfect english with a Angloamerican-ish accent, 'I understand.'[paragraph break]
You into her eyes, her dromaeosaurid-iod body clearly reacting in shock to the way you are looking at her. 'Why do you insult me?' you scream with frustration in Arkonkian, before switching to English you tell her, 'It's your Excellency.'(Though the Arkonkian for that is actually very silimar) pointing to your dead sister's limp body. You pay the holdout leader the amount you promise, inform them to clear out and you leave the fort. The Grue looks at you confused as to where our sister is at. When they asks, you [one of]tell them to not say another word[or]quickly drawn your blaster and shoot the Grue dead, not wanting to leave any witeness[at random]. You sit out on the horizion. You look up at the night sky and catch a glimpse of a flash of lighting. You lower your head and see that there is a big strom on the horizon. You hear some animals howling similarly to Fisften Volvez back home. [if the Dimetrodon is alive]As you pass the lake you realize that one of them is that Dimetrodon like creature. As you pause, so do they and it looks at you, as  if they know exactly what you did. But that is impossible right? You return to walking[otherwise]Then you walk[end if] back to the crashed pod, thinking how you keep your story straight.";
	
carry out shooting Mabel with something:
	if Mabel is asleep:
		say "you fire your [noun] at the Princess killing her in her sleep. Her eyes open wipe and she look right at you.[paragraph break][Evil-Ending]";
		end the story saying "Now what to do about your father.";
	otherwise if player is in the princess room:
		say "Mabel looks down at the area between her chest and her belly, examining her burned clothing and flesh. 'Father's sick you know.' You tell her in a casual voice as if nothing just happened. She looks back up at you.[Evil-Ending]";
		end the story saying "Don't you feel any guilt for what you have done.";
	otherwise:
		say "You want to shoot your sister? The one person you know you can always trust?";
		stop the action;
		
instead of going through a locked door(called the portal):
	if Mabel is awake and Mabel carries multitool knife:
		try Mabel picking the portal;
	otherwise:
		continue the action;
	if a random chance of 2 in 3 succeeds:
		now Did Mabel do something is true;
		
Mabel had a ration is a truth state that varies. Mabel had a ration is usually false.
		
instead of showing something to Mabel:
	if the noun is a Fallen Fruit:
		say "'That [noun] looks tasty,' she says.";
	if the noun is a ration:
		if Mabel had a ration is true:
			say "'I still can not believe it actually tastes much better than it looks', she says.";
		otherwise:
			say "'That what they make you eat?', she says.[paragraph break]
'Yet, it tastes much better than it looks,' you tell her, 'here it's a little nimble.' You break a small piece off and hand it over to her.[paragraph break]
She takes it and goes, 'Hmmmm, you are right it is much much better than it looks.'";
		now Mabel had a ration is True;
		increment current hit points of Mabel;
		say "Mabel health has increase by 1. [Current Health of Mabel]";
	if the noun is family photo:
		say "'[one of]Wait is that that photo? It is!!![or]Oh, look how young you are there?[or]I forgot how dad used to look before his hair started to turn gray.[or]Mom looks so pretty there doesn't see.[or][one of]I still can not believe you brought this picture.[or]how many time are you going to show me this picture?[or]That is a very nice photo isn't?[then purely at random][stopping]', Mabel says.";
	otherwise:
		say "'That's Cool,' she says.";


Section - The Avisurites

Avisurite is a kind of person. The description of Avisurite is "You recognized these dinosaur looking creatures anywhere. They are Avisurites. Originally hailing the planet Bok-to-wa-grunk (it sounds better when they say), they are built like a Velociraptor. Though unlike a Velociraptor they have four fingers (including opposable thumbs) instead of three, a bird like beak and they stand almost as tall as a human on average. Their bodies are almost completely covered in feather. They are dressed in a standard consortium military uniform. [first time] You have no idea why these ones kidnapped the Princess for? The war is over. But you have heard that their many in the consortium who do not like the terms of the peace treaty. The theory is that they believe they are part of an holdout hoping to restart the war by kidnapping the heir to the throne of a prominent member state of the Federation.[only]" 

Consortium military uniform is a kind of clothing. The description of a consortium military uniform is "A dark gray military uniform of the soldier of the consortium. Most are designed to fit the body plan of the Avisurite as they make up most of the population of the consortium. They have a badge on their shoulder to mark their ranks."

[before an actor wearing a consortium military uniform:
	unless the actor is an avisurite, say "[The actor] tries to put on [the noun], but unlike this uniform, [regarding the Actor][they][are] not Avisurite-shaped." instead;]
	
The Holdout Leader is a female Avisurite. The consortium officer uniform is a Consortium military uniform. The Holdout Leader wears the consortium officer uniform. The Description of The Holdout Leader is "This is the leader of the Holdout. She has a scar covering her right eye. Her grayish brown feathers are red at their tips. Her scales are a vivid orangish brown and are more shiny than most others of her species. [first time] This mean she (or her ancestors) most likely comes from a the most eastern tip of a continent from their southern hemisphere their home planet [only]"

The maximum hit points of the Holdout Leader is 40.
	
Consortium Blaster Rifle is a kind of Plasma blaster. The Description of Consortium Blaster Rifle is "A distinctly Avisurite design for a Blaster. Though this one appears to be in very bad need of maintenance, it is still a very deadly weapon."
Consortium Officer Pistol is a Consortium Blaster Rifle carried by Holdout Leader. The Description of Consortium Officer Pistol is "This is the single arm of choice of most consortium army officers."
	
An Avisurite has a truth state called hasAttack.
hasAttack of an Avisurite is usually false.

An Avisurite can be wounded or unwounded. An Avisurite is usually unwounded.
An Avisurite can be defeated or undefeated. An Avisurite is usually undefeated.

Avisurite Guard is a male avisurite. The Avisurite Guard wears a Consortium military uniform. Avisurite Guard carries a consortium blaster rifle. Avisurite Guard is in the Atrium.
Avisurite Soilder is a female avisurite.  Avisurite Soldier wears a consortium military uniform. Avisurite Soilder carries a consortium blaster rifle.
		
Operator uniform is a kind of consortium military uniform. The description of operator uniform is "A plain white and light gray uniform worn by the tech support personnel of the consortium military.".

Fierce avisurite is a female avisurite. Fierce avisurite is in the fort command center. Fierce avisurite wears an operator uniform.
Cowardly avisurite is a male avisurite. Cowardly avisurite is in the fort command center. Cowardly avisurite wears an operator uniform.

The printed name of fierce is "female operator". The printed name of cowardly avisurite is "male operator".

understands "female fort command center operator", "female operator" and "fierce fort command center operator" as fierce Avisurite.
understands "male fort command center operator", "male operator" and "cowardly fort command center operator" as cowardly Avisurite.
	
Fierce avisurite Blaster is a plasma blaster. Fierce avisurite carries fierce avisurite blaster.

Instead of smelling an Avisurites:
	say "You can smell the scent of that plant that they love to add to their body hygiene products. Lavender mixed with burnt popcorn.".

Every turn when the fierce avisurite is undefeated and the player is in the fort command center:
	let the gun be a random plasma blaster carried by fierce avisurite;
	if the gun is not nothing:
		try the fierce avisurite shooting the player with Fierce avisurite Blaster;
	
After the fierce avisurite shooting the player with something for the first time:
	say "She sure looks very aggressive and vicious. She is one fierce Avisurite.";
	now the Printed name of fierce Avisurite is "fierce Avisurite";
				
Every turn when the player has been in the fort command center and the Cowardly Avisurite is undefeated:
	moveCowardlyOperator;
	if the current hit points of Cowardly Avisurite < the maximum hit points of Cowardly Avisurite:
		 increment the current hit points of Cowardly Avisurite;

to moveCowardlyOperator:
	if Cowardly Avisurite is in a room (called the current space):
		let next space be random room which is adjacent to the current space;
		unless next space is nothing or a random chance of 1 in 3 succeeds:
			move Cowardly Avisurite to next space;
			if Cowardly Avisurite is visible, say "The Cowardly Avisurite runs over from [current space], still panicing.";
		otherwise if the number of doors in current space >= 1:
			let chosen door be a random door in current space;
			try Cowardly Avisurite Entering chosen door; 
		otherwise:
			let next space be a random room;
			now Cowardly Avisurite is in next space;
			if Cowardly Avisurite is visible, say "The Cowardly Avisurite has appeared in [next space], still panicking.";
		now the Printed name of Cowardly avisurite is "Cowardly avisurite";

After the Cowardly Avisurite going through a Door:
	now the Door is closed;
	if door is lockable:
		now the Door is locked;

before the Cowardly Avisurite going through a Door:
	if the Door is locked:
		now the Door is unlocked;
	if the Door is closed:
		now the Door is Open;
	if Cowardly Avisurite is visible, say "The [The printed name of the Cowardly Avisurite] [one of]cowardly makes a run towards the stairs[or]goes through the [Noun][stopping].";
	continue the action;
	
Instead of giving something to an Avisurite:
	say "[regarding the second noun][They] probably would not accept a peace offering.";
	
Instead of asking an avisurite for something:
	say "I do not think [regarding the noun][they] is going to give that or anything else to you.";
	
instead of showing something to an Avisurite:
	say "That probably not a good idea.";


 
Section - The Natives

Some Natives are people. The description of The Natives is "These intelligent little furry creatures that look like a cross between a rabbit, a squirrel and a mouse and do not stand not even a foot tall. You estimated their average height to be about 23 centimeters, including their bunny-like ears. They have a bushy squirrel-like tail and mouse-like whiskers and hands and feet. They have three horns on their heads. They do not appear to be very advanced in terms of technology. Based on what you see it appears to be in their version of the stone age, or at least the culture or people or tribe or band or whatever this peculiar group is part of. There are about 27 of them around you. They seem to be only wearing [necklaces], [leather] and [fur pelts]. They are carrying [torches], [spears], [bows] and [quivers] full of arrows. But they do not seem to be posing any threat to you, at least not now. In fact it seems they are trying [if Follow the Natives is happening]to get you to follow them somewhere[otherwise]tell you something[end if]." Understand "Locals", "Rodent People", "Rabbit Squirrel Mouse Rat people" and "indigenous form of intelligent life" as the Natives.

The Natives hold some torches, some spears, some bows and some quivers. The natives wear some necklaces, some leather and some fur pelts.

The description of  torches is "A tiny torch that the native used to light their way through the night." The description of  spears is "A 'long' pointy pole weapon that you are assuming is like the bows that the native brought to defend themselves." The description of bows is "A simple range weapon that you are assuming is like the spears that the native brought to defend themselves." The description of quivers is "What the natives are using to carry arrows for their bows in." Understand "arrows" and "quiver" as quivers. The description of necklaces is "They are made out of a wide variety of stuff." The description of leathers is "Most of the leather these people wear seems to be scaly". The description of fur pelts is "Fur on fur."

carry out shooting the Natives with a plasma blaster:
	say "You fire your [second noun] into the air, scaring away the natives. Mabel looks at you and yells, 'What is that for?'[paragraph break]'I have have enough of those stupid crazy little things,' you reply back to her.[paragraph break]She look at you in disbelief. 'Did the war change you?' She asks.[paragraph break]'Of course it did,' you say, 'war changes everything it touches. Every living thing in this universe changes everything it touches. It a crude world out, well everywhere. Even if the comfort of our own home is not safe. Every living thing is fighting for its survival. I bet you they were not different. Franky, especially after what you have been through these past weeks, I am shocked that you do not understand that.'[paragraph break]'True,' Mabel says angrily, 'but that does not give you an excuse to be a jerk.'[paragraph break]You get some thought to what she said and you reply back, 'Perhaps you are right about that, but I am not taking chances. We only have each other right now.' And with that you go into the pod. It is a couple minutes before Mabel follows you in.";
	now turnsInPod is 5;
	
Instead of attacking the Natives:
	say "You throw your fist at one of the rodent creatures. But you before you have a chance to hit [one of]them[or]it[or]him[or]her[sticky random] all the natives has the natives ran away. Mabel look at you and asks, 'What is that for?'[paragraph break]'They were starting to get on my nerves,' you reply back to her.[paragraph break]She look at you in disbelief. 'Did the war change you?' She asks.[paragraph break]'Of course it did,'you say,'war changes everything it touches. Every living thing in this universe changes everything it touches. Even more some with they fight or otherwise interaction with each other. It a crude world out, well everywhere. Even if the comfort of our own home is not safe. Every living thing is fighting for its survival. I bet you they were not different. Franky, especially after what you have been through these past weeks, I am shocked that you do not understand that.'[paragraph break]'True,' Mabel says angrily, 'but that does not give you an excuse to be a jerk.'[paragraph break]You get some thought to what she said and you reply back, 'Perhaps you are right there sis, but I am not taking chances.' And with that you go into the pod. A minute later your sister you joins you in the pod.";
	now turnsInPod is 5;
	
Instead of smelling the Natives:
	say "In the words of the crazy goofy hair guy in that ancient meme from that show about that since disproven crazy ancient astronaut conspiracy theory, 'You are not saying that they need a bath, but they need a bath.' Perhaps you should try teaching them about personal hygiene, wait a second.";
	
Instead of listening to the Natives:
	say "You can not understand a word they are saying. You would say that it's Greek to you, but during the war you served alongside a man from Greece and he taught you a good deal of it, so this isn't Greek to you."
	

instead of giving something to the Natives:
	say "You try offering them [noun], but they do not seem to be interested in it beside possibly a child like curiosity of the strange object being offered to them by the strange giants from the sky.";
	
instead of asking the natives for something:
	say "Even if you they should understand each other, you do not think they would give you one of their [noun] to you.";
	
instead of showing something to the Natives:
	say "[one of]They seems to be filled with a child-like curiosity[or]'Woooow!' they go, in amazesment[purely at random] of the strange object being shown to them by the strange giants from the sky.";
	

Chapter - The Desert

The Desert is a region. Some hawks are in the Desert.  Wildlife is in the Desert.

Wildlife is a Backdrop. The Description of wildlife is "Along with a wide variety of plants this portion of the Desert is unexceptionally filled with all kinds of animals. You occasionally cross paths with them as you make your way through their home. [paragraph break][one of][one of]You currently do not see much around you right now.[or]The '[hawks]' are still circling above you[or]These tiny rabbits looking things pop in and out of holes in the ground and standing up on their hind legs like prairie dogs or meerkats. They appear to have three horns on their head.[or]'Birds' with  [one of]soar through the air with their[or]walk around on both their hind limbs and folded[as decreasingly likely outcomes] pterosaur-like wings.[purely at random][or]You currently do not see much around you right now [or]Jellyfish’ full of air sacs of various sizes float around in the air almost like balloons.[or]A [one of]'lizard'[or]'snake'[or]Moderately Large Six-legend 'Crab'[or]squirrel-rat thing[or]prairielope[at random] goes past you, then makes its way up the dunes.[or]You see a yellow fox or coyote looking thing with a rocket strapped to it chasing after a purple and green pterosaur-winged road runner going by(?)[or]Far in the distance you see an herb of an animal transvesting the desert. They are big with relatively long necks. They look vaguely like a stegosaurus, but instead the plates are on the tail and the strike are on the back along with three camel-like humps.[as decreasingly likely outcomes]".
Understands "animals" and "life" as wildlife.

Sand is a backdrop. Sand is in Desert. The Description of Sand is "There are two opinions on sand:
[line break]One: 'I don’t like sand. It’s coarse and rough and irritating and it gets everywhere.'
[line break]Two: 'I like sand. Sand is squishy.'
[line break]In deserts people tend towards the first."

Hawks are a Backdrop. The Description of hawks is "You look up. You see three of 'hawks' that previously tried to eat your fallen compatriots soaring high above you, they rarely ever seem to flap their feathery pterosaur-like wings, circling like vultures."

Plants is a Backdrop in Desert. The Description of the plants is "There are many plants that inhabit this seemingly barren wasteland. The most common variety appears to be these short thorny bushes. Though there are a few trees here and there."

Sleeping Bag is a kind of wearable closed container. Sleeping bag are usually openable.

The Avisurite Fort and Dunes are backdrops. Dunes are in Crashsite and Sand Dunes. The Avisurite Fort is in Crashsite and Sand Dunes. Understand "Sand dunes" as dunes.

The Description of the Dunes is "Hills of sand all across the Deserts.".
The rectangular base and the turrets are parts of the Avisurite Fort.

The Description of The Avisurite Fort is "This is a Towering Fortification is an old base that must have been deserted long ago, but there are some signs it may be reoccupied. You recognize the architectural style from the War. From its [rectangular base] to its medieval-looking towering circular spire-like [turrets]. The designs its reeks of something built by the four fingered reptiloid hands and avian beaks of the Syndicated Consortium. You’ve seen countless buildings of a similar design during the war. But the war is over, there is peace in the Orion-Cygnus Arm, But This isn't the Arm and the kidnappers are not with the Consortium. At least not any more."

The description of rectangular base is "This is the base of the Fort."

The description of turrets is "The fort has three medieval-looking towering circular spire-like turrets. Why do you feel like you are going to have to go up one like the hero of some cheesy fairy tale?" Understand  "towers" as turrets.

The sky is a backdrop in Desert. The Description of the sky is "[if starset is happening]It is evening time and the [the planet's star] is setting. The Sky is a beautiful painted canvas of orange red, yellow, blue and purple. Above you see those [hawks] that tried to eat your fallen comrades after you first wander out of the pod to explore the surrounding area. The air is starting to cool, yet it is still unbearably hot.[otherwise]You look at the nightsky. It is dark and full of countless stars. There almost no light pollution this planet, so you can see many star. So many in fact, it almost look like you are in space. The two larger of the planet's [moons] hover in the sky next together.[end if]". The planet's star is a backdrop in Desert. Understand "sunset", "starset", "setting star", "host star", "yellow dwarf" and "sun" as the planet's star. The Description of the planet's star is "Over to the west the planet's star is setting. Very few people in the known universe have never seen a starset in some form before. They are not really that special, but they do have their different and they sure are beatiful." Moons are a backdrop. The description of moons is "You can see the two largest moons of the planet in the sky. One is dark gray the other is orange. They are both next together in the night sky and are wanning gibbouses."


Section 0 - The Pod

The Pod Interior is a room. "This was the pod you and four others used to escape the pirate attack. It got hit and crashed here. It look better on the inside than on the outside. [first time]But you know that the ion engines and the Alcubierre are beyond repair. So are the interior gravitron manipulators. But it's not like you were even going to get it in space again either way. What matter is the hyperspace Communications are broken, but fixed if you can find the rights parts. But at least you can still pick up radio waves in regular space. Though all you get is static and the very faded songs of musicians speaking in languages you can not understand lightyears away and decades ago.[only]". 

Three Sleeping Bags are in the Pod Interior. 

To say communication unit description:
	say "This is the controls for all the communications for the escape pod. The pod has two forms of communications, a hyperspace radio which is broken. It also has a regular old fashion radio as a backup or to communicate with people nearby (Hyperspace communication consumes large amounts of power, at least compared to even things else in the pod). You would try to see if you can get in contact with other surviors, but [if starset is happening] the Princess is right there. You have to go try saving her, even if you kill yourself doing it. You know she would do the save for you[otherwise]if others did survive they probably already sent for help by now if they could. But what if everyone who survived thought that someone else would, then we all would be stuck here for a long time. [first time]Perhaps not long enough to start a new civilization of your own, hopefuly[only][end if].  Anyway the control for both forms of communications are right next to each other and Right above them is the Housing for its internal components. [if Communications Housing is open]Its door is open attached to the ceiling[otherwise]it is closed[end if].";

The communication unit is an fixed in place open unopenable container in the Pod Interior. The description of the communication unit is "[communication unit description]". Understand "Pod's communications", "comms", "comms unit" and "pod's comms unit" as communication unit.

Communications is a fixed in place device. Communications is inside the communication unit. The description of communications is "This is the pod's communications, its hyperspace radio transmitter and receiver are both damaged. But, at least the normal radio still works. Too bad the nearest world inhabited by a radio capable civilization is lightyears away. And even then, they have yet to develop a form of practical interplanetary travel much less faster than practical light travel, so it would be both pointless and illegal to try contacting them. You could sit here and try to contact other surivies[if Starset has not ended], but you have a Princess to go try and save. If you are lucky, there are other survivors out there with a working hyperspace radio and are putting it to good uses[end if]." Understands "normal radio communications", "radio communications", "radio comms","normal radio" and "normal space radio" as communications. The printed name of Communications is "normal radio communications".

Hyperspace communications is a fixed in place device. Hyperspace communications is inside the communication unit.  The description of Hyperspace Communications is "This is the hyperspace communications unit. It sends radio waves through hyperspace instead of, well, normal space. It is broken. If you are lucky, there are other survivors out there with a working hyperspace radio and are putting it to good use[if Starset has not ended] Though it would be nice if you could fix it yourself. It would certainly be nice to know that help is coming[otherwise if stealing parts has ended]. Perhaps you can try using the parts you stole to fix it and contact someone for help[end if]." Understands "hyperspace radio", "hyperspace comms" and "hyperspace radio communications" as hyperspace communications. 

Communications housing is a fixed in place closed openable container. Communications housing is inside the communication unit. The description of communications housing is "This is the housing for all the parts of the pod of the communication unit." The broken parts are a radio parts in communications housing. The description of broken parts is "These are the broken parts of the hyperspace radio." Working parts are a fixed in place radio parts in communications housing. The description of working parts is "These are the still working parts for the pod's communications units." Understand "broken components" as broken parts.
Understand "Working components" as working parts .

Instead of taking working parts:
	say "There is no need to remove these. They are working";
	
Instead of unscrewing Working parts:
	try taking working parts;
	
Instead of cutting working parts:
	try taking working parts;
	
Instead of unscrewing Broken Parts:
	say "Most of them are either no longer attracted or can be easily removed without the use of tools, to cut and unscrew them. You can just take them.";
	try taking Broken Parts;
	
Instead of cutting Broken Parts:
	try unscrewing Broken Parts;
	
Instead of inserting Broken Parts into Communications Housing:
	say "Why would you want to do them back in.";

to RadioSound:
	say "You turn on the radio and no matter what frequency you turn it to, all you hear is static and the occasional hint of faded music from some ‘nearby’ radio capable civilization.";

Carry out switching on the Communications:
	RadioSound;
	
Carry out switching off the Communications:
	say "You flipped the switch and the communications unit goes silent.";
	
Carry out switching on the Hyperspace Communications:
	if Communications are switched off:
		try switching on Communications;
	unless Hyperspace Radio Parts are inside Communications Housing:
		say "[one of]You flip the switch back and forth, it still doesn't change a thing. You still do not hear a thing[or]You decide just for the hell of it see if it somehow magically fixed itself since the last time you checked.
	[paragraph break]
	Nope. It still hasn't magically fixed itself[stopping].";
		try switching off the Hyperspace Communications;
	otherwise:
		say "You and Mabel fiddles with the dials of the control panel for some time before you two manage to get in contact with a communication operator for a Federation Space Force patrol's flag ship. You tell them what happened and they inform you that others have already contacted them and they will be there in a few hours. You and Mabel decide to get some sleep before they arrive. You are awakened in the early hours of the morring before sunset to the sounds of a space craft landing somewhere nearby. You look over at Mabel's sleeping bag and find that she has already woke up. You find her standing outside the pod's airlock. You see Federation Troop transport ship landing on top of the dunes to your right. You and Mabel climb the dunes and are greeted by five members of space force patrol including an officer as they walk down the ramp of the ship. After the army platoon that they brought with them march down the same ramp and turn towards the fort, [EndText]";
		end the story saying "Thank you for play testing the game.";
		
Carry out switching off the Hyperspace Communications:
	say "You turn it off. It literally makes no differences.";	

Section 1 - The Dune Valley

The Crashsite is a Room in the Desert. "[one of]You get out of the pod and look around. This is where your escape pod crashed. You are the only one who survived. You are surrounded by steep sand [dunes] in every direction except one. It's just your luck that a few klicks to the north is a towering [Avisurite Fort] where you just know they are keeping Princess Mabel. Despite the fact it clearly has been abandoned at some point in the recent past, it appears that it has found new habitants. All around you are various kinds of [wildlife] including a few different kinds of [plants] and those '[hawks]' flying high above you in the [sky][or]This is where your escape pod crashed. You are the only survived. Your fallen compatriots now lay beside the pod lying beneath the [parachute] in makeshift body bags, so that those 'hawks' and other wildlife will not  feast upon their corpses. You see to the north a [Avisurite Fort] not far off from your crashed pod. In every other direction there is only [dunes][stopping]. In side of the Crashsite is the [escape pod], it's [airlock] [if airlock is open]wide open[else]shuted closed[end if]. You can see the [Avisurite Fort] from here."

The player is in the Crashsite.

The escape pod is a fixed in place thing in Crashsite. The Description of the escape pod is "This was the pod you and four other users used to escape the attack on the fleet. It got hit and crashed here. From the outside you can tell it is badly damaged. the side is a little picture of the [the flag of the Democratic Federation].". Understand "pod outsides", "escpace pod outsides", "escpace pod's outsides", "pod's outsides", "pod exterior", "pod's exterior", "escape pod exterior" and "escpace pod's exterior" as the escape pod. The flag of the Democratic Federation is a part of the escape pod. The Description of the flag of the Democratic Federation is "An azure field with a white neolithic hand negative at its center with a wreath below it and above it five different color dots forming a crescent pattern forming a circle with it."


The airlock is a open door. The airlock is inside of the Crashsite and outside of the Pod Interior. The Description of the airlock is "This is the pod's airlock. It is [if airlock is open]wide open[else]shuted closed[end if]."

Parachute is a fixed in place thing in Crashsite. The Description of Parachute is "Since there probably nothing to use it for in your current predicament and you needed some respectful means of making extra your fallen comrades' corpse from being scavenge on by the desert wildlife. You decided to use the pod's parachute to cover them."

Instead of looking under parachute:
	say "You lift the parachute. Your fallen compatriots are still in their makeshift body bags."
	
Instead of taking parachute:
	say "That kinda beats the purpose of using it to protect your fallen friends."
	
Instead of pulling parachute:
	try taking parachute;
	
instead of pushing parachute:
	try taking parachute;
	
instead of pushing parachute to a direction:
	try taking parachute;
	
North of the Crashsite is Sand Dunes. Sand Dunes is a room in desert. "Travel through the valley of sand [dunes] you pod crash at the end of. To the south is where your Pod crashed. To the North is the [Avisurite Fort]." 

After deciding the scope of the player while the location is Sand Dunes:
	place the Crashsite in scope.


Section 2 - Fort Curtilage

Curtilage is a region in desert. Fort frontage and Behind Fort are rooms in Curtilage. The Avisurite Fort is in Curtilage. North of the Sand Dunes is Fort frontage.

Dunes are in Frontage.

The Description of The Fort frontage  is "This is the front of the area in front of the front. To your North is the Fort, its entrance a dark tunnel that strangely has no door or anyone guarding it. Off to the west is a small oasis surrounding a lake. And to the east is so bush. Behind you is the Valley in the dunes you came from. The Desert extends in all directions around you."

Inside of Fort Frontage is the Entrance.
The Description of Behind Fort is "You are Behind the fort. There is not much here. Perhaps you should turn back."

The Crab is in Behind Fort.

South of Behind Fort is Fort Frontage. Northwest of Fort Frontage is Behind Fort. Northeast of Fort Frontage is The Behind Fort. 

Section 3 - Oasis and Bush

Lakeside Oasis and The Bush are rooms in the Desert. Dunes are in the Bush.
The Avisurite Fort is in the Lakeside Oasis and the Bush. 
West of Fort frontage is Lakeside Oasis. East of Fort frontage is The Bush. North of Lakeside Oasis is Empty Desert. North of Bush is Empty Desert. Southwest of Fort frontage is Lakeside Oasis. Southeast of Fort Frontage is The Bush.

The Description of the Lakeside Oasis is "You are standing among the [Mongraves] that surround a beautiful [Lake] in the middle of the desert. A little piece of paradise in the middle of the otherwise barren desert. In the middle of the lake is an [island]. You might have taken a closer look, but these [creatures along the shoreline] are lying and waiting like crocodiles for some poor creature to come too close."

Dimetrodon is in the Lakeside Oasis.

Mongraves is scenery in Lakeside Oasis. The Description of the Mongraves is "Various trees, bushes and 'grasses' surround the lake."
Creatures along the shoreline is scenery in Lakeside Oasis. The Description of the Creatures along the shoreline is "These things that look crossed between a crocodile and a python yet with mammalian skin and hair lay beneath the surface waiting to snatch anything that gets too close. You would take a closer look, but you don't want to risk getting too close."
The Lake is scenery in Lakeside Oasis. The Description of the lake is "The lake strangely rather large. You wonder if it is normal to have a gigantic lake in the middle of a ‘barren’ desert. Aren't deserts supposed to be arid? In the middle of the lake is a [island]. Careful to avoid those mammalian-looking crocodile-python things, you decide if you can see anything swimming around in the lake.
[paragraph break]
[one of]The lake looks very deep[or]You see nothing but blue crystal clear water[or]The lake looks undisturbed[or]‘Trout’ swimming around in the lake. You try to take a closer look, but they get spooked and swim away.[or]A small ‘Anomalocaris’ appears briefly before disappearing.[or]A ‘Eel’ swimming around in the lake. You try to take a closer look, but it gets spooked and swims away.[or]One of the creatures that lined the eastern lakeshore like crocodiles swims pass you before crawling/slithering onto an island in the middle of the lake.[or]A few duck-billed seagull looking petrobirds pop out of the water before happily diving back down.[as decreasingly likely outcomes]";

The island is a part of Lake. The Description of the island is "Mongraves cover the island just like the shore."

The Description of the Bush is "You enter a small forest of sort, a bush. There are lot of bushes and shrubs in the bush, also trees. But some of the plants catch your eye more than overs."

The weird plant is a open unopenable fixed in place container in the Bush. The coconut-thing is a thing in the weird plant. The description of the weird plant is "This tumbleweed-looking bush thing is closed in thick thorns."
The description of the coconut-thing is "This fruit or maybe vegetable has a hard shell just like a coconut’s. It has roots and vines sticking out of it. What could be inside of it?"
Understand "coconut", "weird coconut thing", "weird fruit" and "coconut-thing" as coconut-thing. The printed name of the coconut-thing is "weird coconut thing". 

Fruit flesh is a thing. The Description of fruit flesh is "The pineapple-y flesh of the bush coconuts, it also has watermelons like seeds." The printed name of the fruit flesh is "weird coconut flesh". Understand "weird coconut meat", "weird fruit meat", "weird fruit flesh" and "weird coconut flesh" as coconut-thing.

instead of inserting something into the weird plant, say "This might not be a good idea, if you could get yourself poke on one of the thorns if you are not careful.".

carry out cutting weird plant:
	if coconut-thing is in weird plant:
		say "You cut a hole in the thorny vines of the bush so you can retrieve that strange coconut looking fruit or vegetable or whatever.";
		now the player carry the coconut-thing;
	
Instead of taking coconut-thing:
	if coconut-thing is in weird plant:
		say "Trying to be very careful not to poke yourself on the thorns of the bush, you take the coconut looking thing. It is partly buried in the sand, but it lifts right out of the sand and the vines and roots snaps off easy.";
		if a random chance of 3 in 5 succeeds:
			decrease the current hit points of the player by 2;
			say "You accidentally poke yourself, causing you to suffer 2 damage. [Current Health of the player].";
			finger if the player is dead;
		otherwise:
			say "You are lucky that you were extra careful.";
	continue the action;

Three yellow fruits is in the bush. Four red fruits are in the Lakeside Oasis. 
The ground orange is a fallen fruit in bush. The Description of ground orange is "It looks kind of like an orange but it grows in the sand."
Northeast of Lakeside Oasis is Behind Fort. Northwest of the Bush is Behind Fort.

Section 4 - More Desert

[Expanding the world]

Empty Desert is a room in the Desert. "You are surrounded by empty desert for klicks around. There is nothing out here, but [sand] and the occasional sign of life. It is easy to get lost out here. You might find yourself walking in circles. [if Mabel is in Empty Desert and turnsTraversingDesert > 0][Mabel] is still following you.[end if]"

Dunes are in empty desert.

turnsTraversingDesert is a number that varies. turnsTraversingDesert is 0.

Definition: a direction is cardinal if it is not up and it is not down and it is not inside and it is not outside.

instead of going a cardinal direction from Empty Desert:
	if turnsTraversingDesert >= 2 and a random chance of 3 in 4 succeeds:
		now turnsTraversingDesert is 0;
		let choose be a random number between 1 and 4;
		if choose is 1:
			if a random chance of 1 in 2 succeeds:
				now the player is in Fort Frontage;
			otherwise:
				now the player is in Behind Fort;
		otherwise if choose is 2:
			if a random chance of 1 in 2 succeeds:
				now the player is in Lakeside Oasis;
			otherwise:
				now the player is in Bush;
		otherwise:
			continue the action;
		say "It seems you have gone in a circle.";
	otherwise:
		increment turnsTraversingDesert;
		now the player is in Empty Desert;

South of Empty Desert is Behind Fort. West of Behind Fort is Empty Desert. East of Behind Fort is Empty Desert. East of The Bush is Empty Desert. Northeast of the Behind Fort is Empty Desert. Northwest of Behind Fort is Empty Desert. Northeast of the Bush is Empty Desert. Northwest of Lakeside Oasis is Empty Desert.
North of Empty Desert is Fort Frontage. Northeast of Empty Desert is Fort Frontage. Northwest of Empty Desert is Fort Frontage.
Southeast of Empty Desert is The Lakeside Oasis. Southwest of Empty Desert is The Bush.


Chapter  - The Fort

The holdout fort is a region.

Section 1 - Fort Entrance

The Entrance is a dark room in the holdout fort. "This tunnel is the entryway into the fort. Standing at the northern end of the Tunnel, blocking your way is [Grue] guard cowarding in the light. To the south is the [The mouth of entrance] tunnel".
Before printing the name of a dark room, if the room is Entrance, say "Entrance.".

Rule for printing the description of a dark room:
	if location is Entrance:
		say "You are now standing in a partly lit tunnel that leads into the fort. The Avisurites have a strange taste in architecture. [paragraph break]You know it is very dark in here, you might be eaten by a Grue.[paragraph break]";
		try examining light switch;
	otherwise:
		say "It is dark in here."

The Walls are a Backdrop.
The Walls are in the Holdout Fort and Curtilage.
The Description of the Walls is "They are just the walls of the fort."

The mouth of the entrance is a door. The mouth of the entrance is north of Fort Frontage and south of The Entrance.
The description of mouth of entrance is "This is an opening of the [if the Entrance is dark]dark [end if]entrance into the fort[if the Entrance is lighted] where the Grue stays guard[end if].".

The light switch is a fixed in place device in The Entrance. The Description of the light switch is "It is a simple single plastic lightswitch."
Understands "lights" and "light switch" as light switch.

Before examining the light switch when in darkness:
	say "On the wall you see, barely visible from the light bit of light pouring out of the mouth of the entrance, you see a switch." instead;
	
After deciding the scope of the player when the location is the Entrance:
	if the Entrance is dark:
		place the light switch in scope;
		place the Walls in scope;

Instead of  switching on the light switch:
	if Entrance is dark:
		now the Entrance is lighted;
		say "You hear a click, and the room brightens.";
	otherwise if the light switch is switched on:
		say "The light is already on";
		stop the action;
	continue the action;
		
Instead of switching off the light switch:
	if Entrance is lighted:
		say "That probably is not a good idea. The Grue might try something.";
		stop the action;
	otherwise if the Entrance is dark and the light switch is switched off:
		say "The light is already off";
		stop the action;
	continue the action;

The Grue is in the Entrance.

Before Mabel going to the Entrance for the first time:
	if the player is in the location of Mabel, say "Mabel look at the Grue. 'What the?', she exclaim, 'Is that a Grue?'[paragraph break]
'Yes I'm', the Grue tells her in English. He then turns to you and then asks in a very simplified version of Grueish, 'Princess ask If I Grue Right?' You nod your head. [if the Final Duel is not happening] 'I do not know Arkonkian. I know some English, some Spanish, some Mandarin and some Tharsisian,' the Grue adds[end if][paragraph break]You tell Mabel, 'Do not be scared, me and him have an understanding.' Mabel seems eased up upon hearing that, but she keeping an eye on the Grue.'";
	Now Has Mabel seen the Grue is true;

Section 2 - Inside Fort

The Atrium is the rooms in the Holdout fort.

North of the Entrance is the Atrium. The Description of the Atrium is "The atrium is silent. It's very nice looking actually. It is a vast chamber where golden sand still clings to the polished stone of the [walls], remnants of years spent abandoned under unforgiving sun. [if starset has not ended]Evening twilight comes in through[otherwise]Light of the planet's two largest moons shine in from[end if] the [windows ] on the [high ceiling], illuminating the marron [banners] that hanging from the otherwise bare walls, baring a striking [emblem].
[paragraph break]You look around there are lots of [crates]. There are also three doors. One to the north that is open. As well as one to the west and another to the east which are both closed. There is also the big opening in the south which you entered the fort from.[if starset has not ended and avisurite guard is undefeated] There is alone Avisurite guard. You can either fight with the guard(which is probably not a good idea), try going north to sneak among the crates to get to the northern door, or try seeing what is behind the other two doors.[end if]"

Sand is in the Atrium.

Crates are scenery in Atrium. The Description of the crates is "There are many wooden crates scattered all over the Atrium.";

Hallway is a room in the Holdout fort.
The western door is a door.
The western door is west of the Atrium and east of the hallway. The western door is lockable and locked. Western door has matching key multitool knife.
The description of The western door is "This is a door, it is labeled in the Avisurite language of Kawkawgrrrr, 'western wing, command center'."

The eastern door is a door. The eastern door is east of the Atrium and northeast of the second floor landing. The eastern door is unopenable and locked.
The description of The eastern door is "This is a door, it is labeled in the Avisurite language of Kawkawgrrrr, 'eastern wing, living quarters'.  You probably do not need to go in there."

[instead of opening western door:
	say "The door appear to be locked, beside there no way you can get to it without being seen by the Guard.";]

instead of opening eastern door:
	if starset has not ended:
		say "The door appear to be locked, beside there no way you can get to it without increasing the risk of being seen by the Guard, sorry.";
	otherwise:
		say "The door will not open."
		
instead of unlocking eastern door with something:
	if starset has not ended:
		say "There no way you can get to it without increasing the risk you will be seen by the Guard, sorry.";
	otherwise:
		say "This door will not open, even when you try picking it with your multitool's 'picking' tool."

The high ceiling and the windows is a scenery in the Atrium.
The description of the high ceiling is "You look up at the grand ceilings of the Atrium. It has a few glass windows scattered about built right into it."
The description of the windows is "There are just plain glass squares built into the ceiling from which the last bit of the day's dying light shines through.".
The banners are backdrops. Emblem is a part of the banners. The banners are in the Atrium. 
The description of the banners is "Marron colored vexillum similar to the battle banners of the Consortium. The symbol they bear even has a strong resemblance with that beared by the consortium."

Understands "vexillum" and "holdout banner" as Banners

Understand "symbol", "holdout symbol", "holdout emblem", "Avisurite Symbol" and "Avisurite emblem" as emblem. The description of the emblem is "Very similar to the gray, bronze and azure colored mess of gears, drawing compasses, spears and coins of the Consortium Forces, except it adds an yellow equilateral triangle. You wonder what that means?".


Section 3 - Prison Turret

bottom of prison turret, top of prison turret and Princess room are rooms in holdout fort.

The northern door is an open door. The description of the Northern door is "The sign above this door says in Kawkawgrrrr 'Prison Tower'." The northern door is north of the Atrium and south of bottom of prison turret.

The bare spiral staircase is a door.
The bare spiral staircase is up of bottom of prison turret and down of top of prison turret. 
The description of the bottom of prison turret is "You are at the base of the prison tower. Behind you is the [northern door] used to enter from the Atrium. [one of]Looking around you see that it's[or]The room is[stopping] just a bare empty space at the bottom of a medieval looking stone tower with just a [bare spiral staircase] going up. [first time]'Okay, what is this a fairy tail? you think to yourself, 'I mean there are dragons, trolls and quests. Like [if dimetrodon is dead] you already slayed one dragon[otherwise]fought a war against a race of sort of 'dragons'[end if], make a deal with a troll and now you are storming a castle and climb a tower to save a princess from like a bundle of other dragons. It is the 4th millennium C.E., A.D. or whatever you want to call it and this is reality. This is reality!!!! What the heck? What nexts? Some epic twisted that? Like has the Princess secretly run away to marry the Grand Speaker of the Consortium? Is the Chancellor of the Federation actually an evil derk sorceress planning on taking over the galaxy? Has the President been a robot this whole time? Is a wizard going to show up out of not where and save the day at the last moment? Are Avisurites really five gnomes stacked up on top of each other.'
[line break]'Just take a deep breath Mason', you tell yourself 'just take a deep break and let it all go. Just calm yourself now and go up the stairs. The long stairs up the tall tower.'[only]". 

The description of the top of prison turret is "Just a bare empty space at the bottom of a medieval looking stone tower with just a [bare spiral staircase] going down to the bottom. To the north is into a [wooden door] into a room.[if the wooden door is closed] It is closes[otherwise]It is now open[end if]. [if knob is fixed in place]It also has a door [knob].[end if]"

The description of the bare spiral staircase is "A bare stone spiral staircase. The consortium is literally just as advanced as the Federation and this fort as a spiral staircase, but not an elevator. Who designed this thing? You want to talk to the Architect and give them a piece of your mind."

The wooden door is a door.
The description of the wooden door is "The door itself is made out of what you recognize as the wood from a tree native to Bok-to-wa-grunk, known to survive lightning strikes and forest fires[if knob is fixed in place]. But it's [knob] still to be made out of a material not has resistance to fire or lighting and it attached to the door by two screws[end if]."

Knob is a screwable fixed in place thing in top of prison turret. The description of the knob is "It is a door knob. It has a lock built into it. What did you expected." Understand "door knob" as knob.

The wooden door is north of top of prison turret and south of Princess room.
The wooden door is closed and locked. The wooden door has matching key  multitool knife.

carry out shooting the wooden door with something when the wooden door is openable:
	say "You hit it, but the door is still there, in place and completely intact. It does not even have burn marks or a dent on it. Perhaps you should try something else." instead;
		
instead of cutting the wooden door when the wooden door is openable:
	say "You used the tiny saw blade to saw a hole in the door. It took you a much unbelievably shorter amount of time than anyone would reasonablely expect. Though interesting all the noise you were making did not wake up the princess who is sleeping in a bed in her cell.";
	now the wooden door is open;
	now the wooden door is unopenable;

Before deciding the scope of the player when the wooden door is unopenable:
	if the player is in top of prison turret:
		place the Princess Room in scope;
	if the player is in Princess Room:
		place the top of prison turret in scope;

before opening the wooden door:
	if wooden door is locked:
		say "The lock seems to be locked. Well it's a good thing that you have a key. Actually you do not have it. Perhaps there is another way of opening it. [one of][or][or]Maybe you can looking at it to see if you can figure out a way to do it.[then purely at random]" instead;
		
instead of unlocking the wooden door with something:
	If the wooden door is locked and the second noun is not the multitool knife:
		say "Well it's a good thing this is the key to open the door. Actually it is not the key. Perhaps there is another way to unlock or open it.  [one of][or][or]Maybe you can looking at it to see if you can figure out a way to do it.[then purely at random] Maybe using something you have on you.";
	otherwise:
		continue the action;
		
instead of picking the knob:
	if the knob is fixed in place:
		try picking the wooden door;
	otherwise:
		continue the action;
		
instead of unlocking the knob with something:
	if the knob is fixed in place:
		try unlocking the wooden door with the second noun;
	otherwise:
		continue the action;
		
instead of locking the knob with something:
	if the knob is fixed in place:
		try locking the wooden door with the second noun;
	otherwise:
		continue the action;
		
instead of turning the knob:
	if the knob is fixed in place:
		if the wooden door is closed:
			try opening the wooden door;
		otherwise:
			say "The wooden door is already open";
	otherwise:
		continue the action;

carry out shooting knob with something:
	if knob is fixed in place:
		now the wooden door is unlocked;
		now the wooden door is not lockable;
		now the knob is portable;
	otherwise:
		say "There is no longer any point in that anymore." instead;
			
report shooting the knob with something:
	if knob was fixed in place:
		say "You shoot the knob off the door.";

The description of the Princess Room is "The room is a semicircle. Taking up half of the top of the turret. There is a [bed][if Mabel is asleep] on which the princess is sleeping[end if]. All around are the holdout's banners. There are also windows made of glass with steel jail cell like bars."
The Printed name of the Princess Room is "The Princess's Cell."

Bed is an enterable scenery supporter in Princess room. Mabel is on bed. Mabel is asleep.  The description of the bed is "It a very nice and fancy bed. And not just for a prison cell. It's also like something from a, no, no do not go there."

Instead of entering the bed:
	if starset is happening:
		say "You sit next to Princess on the bed. See wakes up the second she feels someone there. She opens her eyes and sits up. 'Mason? What are you doing here?' She asks you.[paragraph break]'Well hello to you too,' you laugh as you stand up out of bed.";
		now Mabel is awake;
	otherwise:
		continue the action;
		
instead of Climbing the bed:
	try entering the bed;
		
Instead of attacking the bed:
	if starset is happening:
		say "The bed to shakes The Princess wakes up a bit surprised, worried and annoyed. 'Mason? What are you doing here?' She asks you.[paragraph break]'Uh, waking you up my dear sister, duh.' you laugh as you stand up out of bed. She sighs in frustration.";
		now Mabel is awake;
	otherwise:
		continue the action;
		
Instead of touching the bed:
	if starset is happening:
		try attacking the bed;
	otherwise:
		continue the action;
		
Instead of rubbing the bed:
	if starset is happening:
		try attacking the bed;
	otherwise:
		continue the action;
		
Instead of pulling the bed:
	if starset is happening:
		try attacking the bed;
	otherwise:
		continue the action;
		
Instead of pushing the bed:
	if starset is happening:
		try attacking the bed;
	otherwise:
		continue the action;
		
Instead of pushing the bed to a direction:
	if starset is happening:
		try attacking the bed;
	otherwise:
		continue the action;
		
After shooting something with something in the Princess :
	if Mabel is asleep and the noun is not Mabel:
		silently try Mabel getting off bed;
		say "The Princess jumps right out of her bed screaming. They she see you standing there with your blaster out. 'Mason?' She yells, 'What the beeping hell do you think you are doing? Are you crazy.'[paragraph break]
'Well, good morning to you too, sister,' you say laughing.[paragraph break]
Mabel walks over to a window and looks outside. 'It is the tail end of dusk, you psycho,' she says, still extremely irritated.
You reply, 'Will, I am your brother after all.'[paragraph break]
'What is that supposed to mean?', she says crossing her arms.[paragraph break]
'You know exactly what I mean.' you giggle.[paragraph break]
Mabel replies, 'You are too old for this Mason.' She then walk over to you and hug you, 'But, I guess somethings never change.'[paragraph break]
Hugging her back, you say 'No, they don't. Do they?' You two then break away. 'Just like you being a bit well, you know.'";
		now Mabel is awake;

Banners are in top of prison turret.

Cell windows are scenery in the Princess room.The description of the Cell windows is "They are made of glass with steel jail cell like bars."
	
		
Section 4 - Command Tower

The description of Hallway is "A narrow hallway. To the west, ahead of you is a [carpeted spiral staircase] ."

West of hallway and down from the Second floor landing is carpeted spiral staircase.
Carpeted spiral staircase is a door.
The description of the carpeted spiral staircase is "A spiral staircase that is carpeted. The consortium is literally just as advanced as the Federation and this fort as a spiral staircase, but not an elevator. Who designed this thing? You want to talk to the Architect and give them a piece of your mind."
Second floor landing is a room in holdout fort. The description of the Second floor landing is "This is the landing of the second floor of the fort. You do not have time to explore this fort. There is a [carpeted spiral staircase] heading back down and [another spiral staircase] heading back up. You know above you is the command center of the fort."

Up of second floor landing and down of fort command center is another spiral staircase. Another spiral staircase is a door. The description of another spiral staircase is "How many spiral staircases are in this stupid fort."


Fort command center is a room in holdout fort. "The room is full of control panels and [holographic displays]. It must be the command center for the fort, where the holdout runs all of their operations."

Banners are in the fort command center.

To say panelDescription:
	say "This is a white and light gray control panel. It looks just like all the other ones in the room. It is covered with display screens and buttons".

Fort control panel is a kind of a device. A fort control panel is fixed in place. A fort control panel is usually switched on. The description of fort control panel is "[panelDescription][if switched on] glowing sky blue, orange and white[end if]."

instead of listening:
	if the location of the player is fort command center and control panel #4 is switched on:
		say "You can hear something coming control panel #4. You briefly turn your attention to the panel";
		RadioSound;
		try examining control panel #4;
	otherwise:
		continue the action;

control panel #1 is a fort control panel in fort command center. Understand "number/num/no 1" and "control panel number/num/no 1" as control panel #1.
control panel #2 is a fort control panel in fort command center. Understand "number/num/no 2", "control panel number/num/no 2" and “holographic display controls” as control panel #2.
control panel #3 is a fort control panel in fort command center. Understand "number/num/no 3" and "control panel number/num/no 3" as control panel #3.
control panel #4 is a fort control panel in fort command center. Understand "number/num/no 4", "control panel number/num/no 4" and “radio controls” as control panel #4.

Control panel #4 is switched off. The wiring-compartment is a closed openable container. It is part of Control Panel #4. The description of Control Panel #4 is "[panelDescription][if Control Panel #4 is switched on] glowing sky blue, orange and white[end if]. This one looks like it contains the controls of the fort's Communications. The protective sheet of metal [if the wiring-compartment is closed]covering the internal components seems to be loose[otherwise] meant to protect it inside has been set asided[end if][if hyperspace radio parts are fixed in place][one of][or]. Perhaps you can try to open up its wiring compartment and see if there is any part you can take to fix the Pod's hyperspace radio[stopping][end if]." The description of wiring-compartment is "[if the wiring-compartment is closed]The protective metal covering for the wiring of Panel #4 seems to be loose[otherwise]You can see into the wiring compartment of the radio control panel. You see the protective panel is off to the side."

Understands "protective metal panel covering", "compartment" and "wiring compartment" as wiring-compartment.

The printed name of wiring-compartment is "wiring compartment".

instead of opening control panel #4:
	try opening wiring-compartment;
	
instead of closing control panel #4:
	try closing wiring-compartment;

Holographic displays is scenery in fort command center. "There is a large Blue holographic projection of the Holdout's plans and stuff. There are also many smaller ones scattered across the room."

carry out an actor switching on a fort control panel: if the fort control panel is visible, say "Let's hope that doesn't mess with anything.";
carry out an actor switching off a fort control panel: if the fort control panel is visible, say "Let's hope that doesn't mess with anything.";

after an actor switching off a control panel #1: 
	now the wooden door is unlocked;
	now the wooden door is open;
	
after an actor switching on a control panel #1: 
	now the wooden door is closed;
	now the wooden door is locked;

instead of an actor switching on a control panel #2: 
	if the fort control panel is visible, say "The holographic display reappears";
	now holographic displays is in fort command center;
	now control panel #2 is switched on;

instead of an actor switching off a control panel #2: 
	if the fort control panel is visible, say "The holographic display disappears";
	now holographic displays is nowhere;
	now control panel #2 is switched off;
	
after an actor switching off a control panel #3:
	now Entrance is dark;
	
after an actor switching on a control panel #3: 
	now Entrance is lighted;

instead of an actor switching on control panel #4:
	if the fort control panel is visible,say "You hear radio static.";
	now control panel #4 is switched on;
	now switchesControlPanel is true;
	
instead of an actor switching off control panel #4:
	if the fort control panel is visible, say "It goes quite";
	now control panel #4 is switched off;
	

carry out listening to control panel #4:
	if control panel #4 is switched off:
		continue the action;
	otherwise if Hyperspace Radio Parts are uncutted:
		RadioSound;
	
		
After examining Control Panel #4:
	if hasExaminedPanel is false:
		now hasExaminedPanel is True;
		
Some hyperspace radio parts are a screwable fixed in place Radio Parts in wiring-compartment. The description of hyperspace radio parts is "These are various parts for a hyperspace radio. Including, by the looks of it, the ones you need to fix your radio.[if fixed in place]It is attached to the rest of the control panel. Maybe try removing the screws and cutting the wires[end if]."
Wiring is part of hyperspace radio parts. The description of wiring is "[if hyperspace radio parts is uncutted]These are the wires keeping the hyperspace radio parts attached to the rest of the panel[otherwise]Look you at the cutted wires sticking out of the hyperspace radio part that you need[end if]." Understands "wires" as wiring.

instead of cutting wiring:
	try cutting hyperspace radio parts;

carry out an actor cutting hyperspace radio parts:
	if hyperspace radio parts are uncutted:
		if control panel #4 is switched on:
			if Actor is visible, say "[refer to the actor] start cutting the wires connecting the parts that you need from the rest of the panels.";
			decrease the current hit points of the the actor by 5;
			unless the Actor is Mabel and Actor is not visible, 
				say "'ZAP! [if Mabel is asleep] You dumby. You[otherwise] Oh no, you guys[end if] forgot to turn off the panel, now [refer to the actor] has been electrocuted. [paragraph break][refer to the actor] take 5 damage.[Current Health of the actor]";
			otherwise:
				say "By the way while you were not watching her, Mabel forgot to turn off the panel and now [refer to the actor] has taken 5 damage.[Current Health of the actor]";
			finger if the actor is dead;
			Now Panel #4 is switched off;
			unless the Actor is Mabel and Actor is not visible,  say "You turn off the Panel and cut the rest of the Wires.";
		otherwise:
			if Actor is visible, say "[refer to the actor] cut the wires connecting the parts that you need with the rest of the panels.";
		now the hyperspace radio parts are cutted;
		if hyperspace radio parts is unscrewable:
			if the Actor is visible, say "Now free, all the parts fall to the bottom of the compartment. Waiting for someone to take them.";
			now hyperspace radio parts is portable;
		otherwise:
			if Actor is visible, say "Now [refer to the actor] just need to unscrew the screws.";
	otherwise:
		say "There is no need to cut them, they have already been cutted.";
	
instead of taking hyperspace radio parts:
	if hyperspace radio parts are fixed in place:
		say "They appear to be attached to the panel. Try getting them loose first.";
	otherwise:
		continue the action;



Part - Scenes

section - Feeding the Grue

Feeding the Grue is a scene.

isGrueFeed is a truth state that varies. isGrueFeed is false.
hasGrueBeenGivenDimetrodon is a truth state that varies. hasGrueBeenGivenDimetrodon is false

Feeding the Grue begins when the Entrance is lighted.

Before going north from the Entrance when Feeding the Grue has not ended:
	if Entrance is dark:
		end the story saying "You were eaten by a Grue.";
	otherwise:
		say "The Grue looks at you. You know that it will not let you by.";
		stop the action.

Feeding the Grue ends when isGrueFeed is true.

After giving the fruit flesh to the Grue:
	say "The Grue seems to very much like the taste of the pineapple like flesh of the thing you got from that plant. He eats it down in only a few bits. He nods at you to let you know you can pass through, for now at least.";
	now the fruit flesh is nowhere;
	now isGrueFeed is true;
	
When Feeding the Grue begins:
	say "You turn. That is when you see, you see it, cowarding before the light. It's a gruesome trolllike creature. hunchback, large muscular body. Pale greenish gray tinted skin. You immediately recognize this creature as a Grue. They hail from a dwarf planet orbiting a red dwarf in the Large Magellanic Cloud. They are known for their bottomless hungry and love of the dark.";
	
When Feeding the Grue ends:
	Now fruit flesh is edible;
	
Instead of eating fruit flesh when Feeding the Grue has not ended:
	if Feeding the Grue is happening:
		say "You would eat it, but you think maybe this is something that the Grue might want.";
	otherwise:
		say "You are not too sure about eating this.";
		
Instead of eating Dimetrodon Meat:
	say "It probably not a good idea to eat strange meat raw. [if Feeding the Grue is happening]Perhaps the Grue might want to eat it.[end if]".
	
Section - Returning home

The printed name of Mabel is "The Princess".

Returning home is a scene. 
Returning home begins when Mabel is awake.
when Returning home begins:
	now the printed name of Mabel is "Mabel";
	silently try Mabel getting off bed;
	say "'Oh, okay. Right. But seriously, what are you doing here? Rescuing me. I really appreciate it and I understand I am the heir to the throne, so everyone would want to be back home safely. But you already fought in the war, shouldn’t have put it on yourself to come here to save me. Besides we both know that I am more than Rescuing myself, I am not some Damsel in distress in some fairy tale. In fact I was slowly coming up with a plan to break out of here.'[paragraph break]'But then what Mabel?' You ask her, 'There is nothing but desert for kilometers around. Can you rescue yourself from heat stroke or thirst.'[paragraph break]'I am well aware that is the one thing I could not figure out. But I guess I do not have too now that you are here.' she replies.[paragraph break]'Plus you know I can not let anything happen to me baby sister,' you tease her as you used to do all the time. She has always been the more childish one between the two of you, destipe being three minutes older. Though you do know she is indeed more than able to handle herself. In fact she wanted to fight in the war too, but she is the heir and you are the spare. That is actually one of the few times that you actually work in your favor.[paragraph break]You decided to take some time explaining the entire situation to her. After filling her up to speed about your predicament, she asks, 'So what exactly is the plan?'[paragraph break]You hand her the spare blaster pistol and tell her, 'follow me'.[paragraph break]'Shouldn't I, like, have a permit or something to use this?' she asks you to point it to the ground. [paragraph break]'Not it this situation,' You tell her, 'I am not going to leave my twin sister defenseless as we risk our lives trying to get out of here.'";
	now Mabel carries spare blaster;
	now Did Mabel do something is true;
	move Holdout Leader to the Atrium;
	move Avisurite Soldier to the Atrium;
	
	
Returning home ends quietly when Mabel is in CrashSite for the first time and Stealing parts has not ended.
Returning home ends victoriously when Mabel is in Crashsite for the first time and Stealing parts has ended.

When Returning home ends victoriously:
	now Hyperspace radio parts are portable;
	
When Returning home ends victoriously:
		say "You look at the Pod. Now you can fix its hyperspace radio and return back home.";
	
[Instead of going south during The Returning home:
	say "You and Mabel head down the stairs...
	[paragraph break]To be countine....";]
	
To say EndText:
	say "They lead you both aboard and asks if you guys need anything. You and your sister both look at each other. [paragraph break]
'I think we both just want breakfast,' you reply.
[paragraph break]'Yes, just Breakfast,' Mabel says. 
[paragraph break] The commanding officer quickly looks at both of you and says, 'Okay then, I will make sure there is something to eat for both of you when we get back to the flag ship. In the meantime just relax.'
 [paragraph break]And with that the ship transport took off. Once it lands in the flag ship's hangar, you are quickly taken to the ship's mess hall with the other survivors and fed breakfast. Once you both have eaten your meal you are both led to a place to have quick medical diagnoses run on both of them. After you pass with flying colors, you are allowed to clean yourself up and check on your sister. After learning she is in fact doing fine, at least physically, you know that the bulk of the Holdout forces has been rounded up. The ones that have been catched alive will be handed over to the Consortium which will figure out what they want to do with them. The rest are believed to be on the run.
[conditional paragraph break] It takes you and your Sister three days before you manage to get back home. Once there your family threw a small celebration, and pretty much everyone was happy that you both made it home alive.
[paragraph break]Author's note: In case you are wondering whatever happens to The Grue. Well through their mercenary they eventually make enough money to return back to the Grue Home World, where he went on to philosophical treatise that not only change Grue philosophy, but the philosophy of all species, peoples, cultures and civilizations across the local group. Even people as far as Andromeda sing its praises. Furthermore the Grues are big fans of the idea of a philosopher king, the fame of his work led him down the path of being elected the Emperor of the Grues. But, sadly his reign was unfortunately cut short after 8 years when he learned the hard way that even a Grue can eat too much. He was 124 Federation standard years old. Which is old even in Grue terms, just not that old.";

section - fix radio ending
	
switchesControlPanel is a truth state that varies.
switchesControlPanel is usually false.

hasExaminedPanel is a truth state that varies.
hasExaminedPanel is usually false.

Stealing parts is a scene.
Exploring Command Center is a scene. Exploring Command Center begins when the player is inside the fort command center. Exploring Command Center ends experimentally when switchesControlPanel is true. Exploring Command Center ends quickly when wiring-compartment is open. Exploring Command Center ends curiously when hasExaminedPanel is True.

When Exploring Command Center ends experimentally:
	say "Wait, what. This is the Controls for their Radio. [if Mabel is asleep]You look off to the side of the device and see that t[otherwise] [paragraph break]'Hey Mason look over here,' Mabel says to you pointing to the side of the control panel. You walk over next to her and see what she is talking about. [end if]The panel covering the compartment for panel's wiring is loose and can be easy move to the side to get into it. Perhaps in there you can find some parts to used to fixed your pod's hyperspace radio and get in contact with the Federation.";
	now Did Mabel do something is true;
	
Bored Mabel is a scene. Bored Mabel begins when Boring Mabel > 7 and Mabel is in the fort command center and Exploring Command Center has not ended. Bored Mabel ends when Exploring Command Center ends.

when Bored Mabel Begins:
	say "Mabel looks at you. 'Okay, brother, you are taking too long,’ she says, sounding like an impatient child. ‘Why don't I try helping you look for the parts? One of these computer thingy-a-bobbers  have to be the control for their comms.'"
	
Mabel asking for knife is a scene. Mabel asking for knife begins when wiring-compartment is open and the location of Mabel is the fort command center and Mabel is awake and Mabel does not carry the multitool knife and Stealing parts has not ended.
Mabel asking for knife ends yesly when askingIsOver is true and Mabel holds the multitool knife.
Mabel asking for knife ends noly when askingIsOver is true and Mabel does not carry the multitool knife.

askingIsOver is a truth state that varies. askingISOver is usually false.

When Mabel asking for knife begins:
	if the player carries the multitool knife:
		say "You are getting out your knife to begin taking the parts out, when Mabel asks 'I can do it if you want?'";
		try mabel requesting the multitool knife;
		now askingIsOver is true;
	otherwise:
		say "Wait where is your knife?";

When Exploring Command Center ends quickly:
	say "After removing the loose panel protecting the wiring and other components of the Panel number 4 and see that various parts you could used to fixed the Hyperspace radio of your escape pod.";
	
When Exploring Command Center ends curiously:
	say "Hmmm. Maybe perhaps you can try open up it wiring compartment and see if there any part you can take to fixed the Pod's hyperspace radio.";

Stealing parts begins when Exploring Command Center ends.
Stealing parts begins when The Final Duel ends.
Stealing parts ends when the Player carries Hyperspace Radio Parts or Mabel carries Hyperspace Radio Parts.

When Stealing parts ends:
	if the player carries the hyperspace radio parts:
		say "You got the part you need to fix the hyperspace radio. Now [if Mabel is awake]let's go to the pod and fix it[otherwise] once you rescue the Princess you can fix the pod's hyperspace radio[end if]. Then you can try getting in contact with the federation.";
	otherwise if Mabel is visible:
		say "Mabel grabs the hyperspace.";
	
Fixing the Radio is a Scene.
Fixing the Radio begins when Returning home ends victoriously.
Fixing the Radio ends when Hyperspace Radio Parts are fixed in place;

When Fixing the Radio begins:
	if Mabel holds Hyperspace Radio Parts:
		say "Mabel looks over at you. 'You know brother you are looking pretty tired,' she says to you, 'how about I just go ahead and fix them myself? I am the more of the tinkerer between the two of us after all.'[paragraph break]
You nod your head.[paragraph break]
'Do not worry, I will have it fixed in no time,' she says.[paragraph break]
You tell her if she needs any help do not be afraid to ask. She tells already she knows before she skips over to the escape pod.";
	otherwise if ((the current hit points of the Player < 10) and ((the current hit points of Mabel > the current hit points of the Player) or (the current hit points of the Player < 5 and current hit points of Mabel > 10))) or Guard Fight has happened or Mabel asking for knife ended noly:
		say "Mabel looks over at you. 'You know brother you are looking pretty tired,' she says to you, 'how about I fix the hyperspace comms? After all, I am much more skilled and experienced in this area than you are.'";
		try Mabel requesting the hyperspace radio parts;
		say "You tell her if she needs any help do not be afraid to ask. She tells she already knows as she skips over to the escape pod.";
	
instead of inserting hyperspace radio parts into Communications Housing:
	if Broken Parts are in Communications Housing:
		say "You need to take out the broken components first.";
	otherwise:
		now Hyperspace Radio Parts are fixed in place;
		say "You put the new parts into where they need to go. You hook up the wiring and screw them in. Now you should be able to get in contact with the Federation. Just need to turn on Hyperspace communications.";
		continue the action;
		
When Fixing the Radio ends:
	if the player is in Pod Interior, say "congratulations the hyperspace radio is now fixed. Now you can contact the space force.";
	now did Mabel do something is true;
	
	
section - following ending

Encountering the Natives is a scene. Encountering the Natives begins when Returning home ends quietly;

When Encountering the Natives begins:
	say "You and Mabel has return to the crashsite. Just has you two decide to start making camp for the night you see lights not even a foot above the ground. At first you just assume that it is just a herd of some bioluminescent organisms traveling by, but then Mabel asks, 'Is that fire?' And indeed it is. The lights comes closers. It is not long before you can see that the light was being emitted by little tiny torches carried by little rodent-like creatures. They look like something cross between a rabbit, a mouse and a squirrel, have possible thumbs and walk on their hind legs. Along with torches they carried spears, bows and arrows. The one article of clothing they appear to be wearing is pelts and leather wrapped around their bodies and necklace hanging from their neck. They seem to be in their version of the stone age. Galactic laws and treaties strictly limit contact with civilizations that do not have interstellar travel, even more so with ones that appear to barely invent, well anything beyond basic tools. Though by the look of it, you do not have a choice in the matter. One who must be their leader approaches you and Mabel. He look you both up and down. He makes a series of noise that you are pretty sure was him saying something. Whether it was to the two of you or his friends you are not sure. Two more of them approach you, carrying a fur blanket on which there is something round rolling upon as it is carried. They both look younger than most of the rest and you think one is female and the other is male, but to be honest you are not even sure if correct in assuming the first one is their leader or a him or even anything. The 'young man' and 'lady' set down the blanket they are carrying down in front of you. The object that was carried within it looked exactly like an apple. The three look at you. The leader points his spear at you and speaks again. It seems they are trying to tell you something, but you can not speak their language and they surely will not know any that you or your sister can. But you think they want you to take the 'apple'. You are not sure if you should, you do not want to break galactic law after all. Perhaps if you and Mabel enter the pod they will get the hint and leave after a while. But maybe you should take the apple. It's probably rude to refuse it. Who knows, they could consider it a great insult worse than any other. You ask Mabel what she thinks. She is not sure herself, but she makes it clear she in favor of taking it.";
	now the Natives are in Crashsite;
	Now the fur blanket is in the Crashsite;
	now the apple is on the fur blanket;
	
The Apple is a fallen fruit. The description of The Apple is "It looks exactly like a bright red apple."

Fur blanket is a supporter. The description of The fur blanket is "It looks like a blanket made out of the hide of a furry animal. It is not big enough for you, but it is the perfect size for two or three of these tiny creatures to snuggle up against each other under."
	
Instead of taking Apple:
	now the player carries the Apple;
	if the player is in the crashsite, say "You pick up the apple. [one of]T[or]The leader seems to be telling the rest to calm down. Once again t[stopping]he one you believe is a little girl make a gesture that appear to be an attempt to tell you to eat it.";
	stop the action;
	
tried taking blanket is a truth state that varies. tried taking blanket is usually false.

Instead of taking Apple:
	now the player carries the Apple;
	if the player is in the crashsite, say "You pick up the apple. [one of]T[or]The leader seems to be telling the rest to calm down. Once again t[stopping]he one you believe is a little girl make a gesture that appear to be an attempt to tell you to eat it.";
	stop the action;
	
instead of taking the fur blanket:
	if tried taking Blanket is false:
		say "You try reaching down and taking the blanket, but the young native boy slaps your wrist and screams something at you. The message is clear, but you find it hard not to laugh at him.";
		now tried taking Blanket is true;
	otherwise:
		say "They are not going to let anyone take it, they already made that clear.";
	stop the action;
	
instead of Mabel taking the fur blanket:
	 if tried taking Blanket is false:
		say "Mabel reaches down and attempts to take the blanket, but the young native boy slaps her wrist and screams something at her. You laugh. 'Ha ha very funny Mason,' Mabel quips.";
		now tried taking Blanket is true;
	otherwise:
		say "'Do you think I want my wrist slapped?' she asks you.";
	stop the action;
	
instead of eating the Apple:
	say "It tastes sweet, sour and juicy; just like (a red version of) an Arkonkian Smiths, expect it a bit sweeter. There is also the fact it is red and not green. You offer Mabel a bit. As she takes, you look at the crowds of funny looking rodent people and they seem to be happy about something. The leader walks to you and tugs on your pant leg. He and the others seem to be trying to tell you and mabel to follow them. You are not sure if that is a good idea. You look at Mabel. As she finishes gorging down on the apple while going, 'Mmmmm' she looks up at you and says, 'I think we should follow them, but if you want we can stay here. Whatever you want brother, just tell me.'";
	now the Apple is nowhere;
	
Instead of giving the Apple to Mabel:
	say "You hand the apple over to Mabel. She takes a bit out of it and seems to fall in love with it instantly. She offers you a bit. You take it. It tastes sweet, sour and juicy;  just like (a red version of) an Arkonkian Smiths, but a bit sweeter. As you hand the rest to her you find the leader tugging on your pant leg. He and the others appear to want you guys to follow them. You are not sure if that is a good idea. You look at Mabel. As she finished gorging down the apple and going, 'Mmmmm' the whole time she looks up at you and says, 'I think we should follow them, or we stay here if you want. Whatever you want brother, just tell me.'";
	now the Apple is nowhere;
	
Report dropping the Apple:
	if the player is in the crashsite:
		say "You drop the Apple on to the ground. The band of primitive rodent people seem to be insulted and are yelling at you. Mabel turn to you and says, 'I think you should probably pick it back up'" instead;
	otherwise:
		continue the action;
	
Follow the Natives is a scene. Follow the Natives begins when the Apple is nowhere AND Encountering the Natives is happening. 
Follow the Natives ends when Encountering the Natives ends.

When Follow the Natives begins:
	Now turnsInPod is -2;
	
Instead of going north from crashsite when Encountering the Natives is happening:
	say "The Native are blocking your way.";

When Encountering the Natives ends with following:
	say "As You and Mabel follow the Navites. The only lights are that of the two moons, the stars and the flaming light of the torches. Neither of you are sure of where they are taking you. After a half an hour or some, you spot what is unmistakably a camp fire and two crashed espace federation pods. Turns out that you were not the only survivor after all and apparently the natives have correctly assumed that you and them are together. Well, You all are human, so I guess it is not much of an assumption. Though many scientists consider Arkonkians to be their own separate subspecies. But then again these humans are a very diverse bunch. From dark skin with fiery red hair to fair skin with black hair to brown with naturally blue hair and everything in between. But then again, for all they know you and them could not like each other. [paragraph break]Anyway you guys tell the rodent thing thank you and I think they reply with their version of 'Your welcome' and they leave. We spent the rest of the night with the other survivors in their camp and in the Morrying the federation came to rescue us. A federation Space Force patrol squadron lands right next to the camp. A Space Force patrol officer walks down the ramp. You all welcome her and her patrol members to your camp. After spending so much time talking the other board the spaceships, but you and your sister tell the officer about the holdout and their fort. Her and her men tell you that the federation and the consortium will work together to finger out what to do with with them. with that, [EndText]";
	end the story saying "Thank you for testing the game.".
	
When Encountering the Natives ends with staying:
	say "Seeing that you and Mabel have decided to go into the pod instead of following them, the Locals give up on whatever they were trying to co you. After watching them leave, Mabel goes to fetch you two each sleeping bag. You both are pretty tired, so it is not longer before you two fall asleep. You are awakened to the first light of the planet's rising star and the sound of a spaceship zipping through the atmosphere. You look over at Mabel's sleeping bag and find that she has already woken up. You get up and see that she is standing outside the pod's airlock. You see Federation Troop transport ship landing on top of the dunes to your right. You and Mabel climb up the dunes and are greeted by five members of the space force patrol including an officer as they walk down the ramp of the ship. After the army platoon that they brought with them march down the ramp and heads towards the fort, [EndText]";
	end the story saying "Thank you for testing the game.".
	
When Encountering the Natives ends with shooting:
	say "You and Mabel finger out how to lock the airlock and close it tighted. You never know if the Native will come back. You quickly fall asleep. You are both awakened to the sound of a ship landing nearby. You both head outside to see the Federation Troop transport ship landing on top of the dunes to your right. You and Mabel climb them and are greeted by five members of the space force patrol including an officer as they walk down the ramp of the ship. After the army platoon that they brought with them march down the same ramp and towards the fort, [EndText]";
	end the story saying "Thank you for testing the game.".
	
turnsInPod is a number that varies. turnsInPod is 0.

Every Turn when the location of the player is Pod Interior:
	increment turnsInPod;
	
After going a direction when room gone from is Pod Interior:
	now turnsInPod is 0;
	
Encountering the Natives ends with staying when turnsInPod is 4.

Encountering the Natives ends with shooting when turnsInPod is 5.

Encountering the Natives ends with following when turnsInPod is 6.

[end the story saying "Thank you for play testing the game.";]

Section - Time

Starset is a Scene.
Starset begins when play begins. Starset ends when Returning home begins.

When starset ends:
	now the planet's star is nowhere;
	now the hawks are nowhere;

Night is a Scene.
Night begins when Starset ends.
When night begins:
	now moons are in desert;

Section - Time

Starset is a Scene.
Starset begins when play begins. Starset ends when Returning home begins.

When starset ends:
	now the planet's star is nowhere;
	now the hawks are nowhere;

Night is a Scene.
Night begins when Starset ends.
When night begins:
	now moons are in desert;

Section - Fights?

Guard Fight is a scene.  
Guard Fight begins when the Avisurite Guard is wounded and Starset has not ended.
Guard Fight ends normally when the Avisurite Guard is defeated and Starset has not ended.
Guard Fight ends belated when the Avisurite Guard is defeated and Starset has ended.

Instead of taking something when Guard Fight is happening:
	say "You try to make a run for [noun], but your opponent gets in your way.";

When Guard Fight begins:
	say "The guard snarls in pain. He looks over at you and prepares to fight.";

Every turn during Guard Fight:
	if a random chance of 1 in 3 succeeds and hasAttack of Avisurite Guard is false:
		try Avisurite Guard attacking the Player;
	if the location of Avisurite Guard is not the location of the player and Avisurite Guard is undefeated:
		let the way be the best route from the location of Avisurite Guard to the location of the player, using doors;
		try Avisurite Guard going the way;
		
The final duel is a scene. The final duel begins when Mabel is in the Atrium for the first time and Mabel is awake. The final duel ends when Holdout Leader is defeated and Avisurite Guard is defeated and Avisurite Soldier is defeated;

When the final duel begins:
	now the western door is open;
	say "You and Mabel enter the Atrium and see a female Avisurite wearing a Consortium Officer uniform standing in the middle of the room. She looks at both of you and Tweets, Chirps, Barks and Growls before saying in perfect english in a thick angloamerican accent, 'How? How did you make it pass the Grue. They are like my one underling that actually manages to pull their weight around here and you know what it does matter.' She then turn to her soldiers and Hisses in KawKawGrrrrr, 'Attack!!!!!!!'";
	now can Mabel attack is true;
	repeat with Enemy running through Avisurites in the location of the Player:
		let the gun be a random plasma blaster carried by Enemy;
		unless the gun is nothing:
			if the hasAttack of Enemy is false and a random chance of 4 in 5 succeeds:
				if a random chance of 1 in 2 succeeds:
					try Enemy shooting the player with the gun;
				otherwise:
					try Enemy shooting Mabel with the gun;
		now the hasAttack of Enemy is false;

Every turn during The Final Duel:
	if the Holdout Leader is not in the location of the player and Holdout Leader is undefeated:
		let the way be the best route from the location of Holdout Leader to the location of the player, using doors;
		try Holdout Leader going the way;
	if the Avisurite Soldier is not in the location of the player and Avisurite Soldier is undefeated:
		let the way be the best route from the location of Avisurite Soldier to the location of the player, using doors;
		try Avisurite Soldier going the way;
	if the Avisurite Guard is not in the location of Mabel and Avisurite Guard is undefeated:
		let the way be the best route from the location of Avisurite Guard to the location of the mabel, using doors;
		try Avisurite Guard going the way;
	repeat with Enemy running through Avisurites in the location of the Player:
		if the hasAttack of Enemy is false:
			let the gun be a random plasma blaster carried by Enemy;
			unless the gun is nothing:
				if a random chance of 4 in 5 succeeds:
					if a random chance of 1 in 2 succeeds:
						try Enemy shooting the player with the gun;
					otherwise:
						try Enemy shooting Mabel with the gun;
				otherwise if a random chance of 2 in 5 succeeds:
					if a random chance of 1 in 2 succeeds:
						try Enemy attacking the player;
					otherwise:
						try Enemy attacking Mabel;
				otherwise if enemy is Avisurite Guard and a random chance of 3 in 5 succeeds:
					try Avisurite Guard attacking the Player;
			otherwise:
				if a random chance of 3 in 35 succeeds:
					if a random chance of 1 in 2 succeeds:
						try Enemy attacking the player;
					otherwise:
						try Enemy attacking Mabel;
				otherwise:
					let chosen blaster be a random plasma blaster in the location;
					try Enemy taking chosen blaster;
			now the hasAttack of Enemy is false;

When The Final Duel ends:
	say "You have won the battle.";
	unless Stealing parts has ended:
		say "Mabel turns to you and asks, 'Didn't you say that the pod's Hyperspace radio is broken?'[paragraph break]You nod your head.[paragraph break]'[if Exploring Command Center has not happened]They probably have part to fix it in their command center. I believe it is in the western tower somewhere,'she says.[paragraph break] [otherwise if Exploring Command Center is happening and the location of the Player is not the fort command center]They might have something in the command center to fixed it,' she says.[paragraph break][otherwise]I think we should look around for parts,' she says.[paragraph break] The holographic display did seems to something about a hyperspace radio.[end if]You take some time to think before coming to your decision.";

