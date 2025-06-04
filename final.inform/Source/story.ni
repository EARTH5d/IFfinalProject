"Not a fairy tail" by Casey Alton Marshall

Use American dialect. 


Release along with a website.
Release along with the introductory postcard.
Release along with an interpreter.
Release along with the library card.


When play begins: 
	say "After coming back from a war with bewteen the Federation and the Consortium, the Humans and the Avisurites, you were stocked to hear that an Anisurite Holdout from the war kidnapped the Crown Princess of the Federation memmber state Arkonkia. After her family pleads with both the Federation's Senate and the Consortium's Supreme Counicl to sent a fleet to get her back. Destipe being scarred by the war, and both your own and everyone else's best judgement you feeled complead to voultneer to be part of the mission to save her. Unfornataley as the ships where just aprroching the planet Arkonkian scouts tracked the Princess and her kidnappers, space pirates attack the small fleet. The good news you and a few others managed to get on in a escpace pod. The bad news that your was among many hit by the pirates' ships. This resulted in both your pod's engines and it's alcubierre drive were both badly damages. The Pod crashed apon the planet. To make mangers worse, destipe the fact you all mange to depoted the parashutes, the did not prevent the pod from ramming into the planet's surface at high speed kocking you unconsinius. When you awake, you see that you are the only one to have surived the crashed. You are on your own.";
	repeat with P running through people:
		now the current hit points of P is the maximum hit points of P;	

Part - Mechics and Stuff

The block giving rule is not listed in the check giving it to rules.

understand "flip on [something]","flip [something] on", "toggle on [something]" and "toggle [something] on" as switching on.
understand "flip off [something]","flip [something] off", "toggle off [something]" and "toggle [something] off" as switching off.

Understand the command "hug" as something new.

Hugging is an action applying to one visible thing.
Understand "hug [something]" as hugging.

Check hugging:
	if noun is not a person:
		say "You are on a mission. It probadly not a good used of your time to go around hugging inamantiate.";
	if noun is an Avisurite:
		say "That probadly not a smart idea." instead;
	otherwise if noun is an animal:
		say "Are you sure you want to go around hugging the fuana on an unfallimar world? They Probadly wouldn't like that anyway." instead;

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
		
		
Underlying relates various things to one thing. The verb to underlie means the underlying relation. The verb to be under means the underlying relation. The verb to be beneath means the underlying relation.

Instead of looking under a thing which is underlaid by something (called the lost object):
	say "You find [the list of things which underlie the noun]!";

A person can be asleep or awake. 
Instead of waking an awake person: say "They are already awake."
Instead of waking an asleep person: say "How, are you going to do it though."

understand "hand [something preferably held] to [someone]", "hand over [something preferably held] to [someone]" , "hand [something preferably held] over to [someone]" as giving it to. understand "hand [someone] [something preferably held]" as giving it to (with nouns reversed).

understand "drag [something]" as pulling.
understand "pull [something] [direction]", "pull [something] to [direction]" ,"drag [something] [direction]" and "drag [something] to [direction]" as pushing it to.

Clothing is a kind of thing. The description of clothing is "This is an artlice of Clothing. Clothing is the weird stuff that many if not most form of intelligent life wear." Clothing is always wearable.

Radio Parts are a kind of thing. Radio Parts can be uncutted or cutted. Radio Parts are usually uncutted.

Section - eating stuff

the standard report eating rule is not listed in the report eating rules.
[the block attacking rule is not listed in the check attacking rules.]

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
	if Actor is Mabel and Food is a ration and Mabel had a ration is false:
		say "'Woooww,' Mabel goes in shock, 'This is actually much better than it looks.'";
		now Mabel had a ration is True;
	otherwise:
		say "Mabel [one of]says[or]goes[purely at random], 'Hummm[one of].[or].[or]![or]![or]!!![purely at random]'";
	continue the action;

Check giving an edible thing(called food) to Mabel:
	if the current hit points of Mabel > the maximum hit points of Mabel - 5:
		say "Mabel refuses [the food], she is not hungry right now.";
		
after giving an edible thing to Mabel:
	try mabel eating the noun;
	
Report eating Rations:
	say "It tastes good, very good. Though after serving five years in the Federation military you still do not have any idea what it is made form." instead;
	
Report eating a thing that is not Rations:
	say "It tastes deliciously. Hopefully it will not make you sick.";
	
You hungry is a recurring scene. You hungry begins when the current hit points of the player < the maximum hit points of the player - 5 and current hit points of the player > 0. You  hungry ends when the current hit points of the player >= the maximum hit points of the player.

When you hungry begins:
	say "Your stomacth [one of]rumbles[or]roars[or]growls[purely at random] with hunger.";
	
Mabel hungry is a recurring scene. Mabel hungry begins when the current hit points of the Mabel < the maximum hit points of the Mabel - 10 and current hit points of the Mabel > 0. Mabel hungry ends when the current hit points of Mabel >= the maximum hit points of the Mabel.

When Mabel hungry begins:
	say "Mabel [one of]yells out to[or]calls out to[or]shouts out to[or]imform[or]tells[or]tells[purely at random] you, 'Hey Mason, I am [one of]feel[or]feel[or]starting to feel[or] begining to feel[purely at random] a bit peckish.'";
	
Ration are a kind of thing. Ration are always edible. The description of ration is "Supiring good, though you can exactly tell what they are or what in them. They say they are very heathly and can even help you heal faster. Even after all you expect fighting in the war You are still not sure about that last part."

fallen fruit is a kind of thing. fallen fruit is always edible. Yellow fruit is a kind of fallen fruit.  The Description of yellow fruit is "There are couple of these yellow looking big strawberries thing on the ground in the bush." 
Understand "yellow strawberry" as yellow fruit. red fruit are a kind of fallen fruit. The Description of red fruit is "Red bannana looking things that fallen on the ground near the lake." Understand "Red bannana" as red fruit. 
	
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
			say "[first time]We speak to the Grue in it's native Gruish, well broken Gruish pepper with works from Arkonkian and Kawkawgrrrr (an Avisurite language you pick a little up fighting in the war).[only][paragraph break][reply entry][line break]Though your Gruish is rusty.";
			rule succeeds;
	say "[one of]You are not to sure if the Grue understand what you tried to say[or]The Grue does not seem to understand you, maybe you did not say it right[or]'what?', the Grue reply back to you confused[or]The Grue luaghs at you[then purely at random]. Your gruish is very rusty. Try something saying else.";
	
Instead of speech when the noun is Mabel:
	if Mabel is awake:
		if follow the natives is happening and the topic understood includes "follow/following/go":
			say "You tell Mabel you think you should follow the little furry critters. She agrees.";
			now turnsInPod is 6;
			rule succeeds;
		otherwise if follow the natives is happening and the topic understood includes "stay/staying/ingore":
			say "You tell Mabel you think you should stay. She agrees and you both climb into the escpase pod.";
			now turnsInPod is 4;
			rule succeeds;
		otherwise:
			repeat through Table of Mabel Responses:
				if the topic understood includes topic entry:
					unless the topic understood includes "Apple/Natives/Native/Rodent/Locals" and encountering the natives is not happening:
						say "[reply entry]";
						rule succeeds;
			say "She responses, '[if follow the natives is happening]I am much rather focus on the stituion at hand right now. You known that I am tempted to [bold type]FOLLOW[roman type] these guys and see where they lead us, but if you really want to we can [bold type]STAY[roman type] here. Please tell me when you make up your mind, Mason[otherwise]We do not have time to talk about that[one of][or][or][or][or][or] mason[or] mason[or] mason[or] brother[or] lieutenat[purely at random][end if].'";
	otherwise:
		say "She still fast a sleep unware that you are trying talk to her.";
	now Did Mabel do something is true;
		
		
Instead of speech when the noun is an animal:
	say "[the noun] looks at you with a curious look.";
		
Instead of speech when the noun is  an avisurite:
	say "[The noun] is an emeny. It probadly not a good idea to talk to them.";
	
Instead of speech when the noun is the player:
	say "There is alot of stuff that you can talk to yourself about, but you would more likely thna not already known it.";
	
instead of speech when the noun is the Natives:
	say "You can not speak there lanugue and they surelly will not known any that you or your sister can. Though it seem they are trying to tell you something. But you think they want you to [if follow the Natives is happening]follow them[otherwise]take the 'apple'[end if]. "
	
[Instead of speech when the noun is not a person:
	say  "[the noun] does not want to talk to you. Mostly becuase is is inable to want to talk to you, partly becuase it is incapable of talking.";]
	
Yelling at is an action applying to one thing.
Understand "yell at [something]",  "shout at [something]", "scream at [something]", "yell to [something]",  "shout to [something]", "scream to [something]", "yell towards [something]",  "shout towards [something]" and "scream towards [something]" as Yelling at.

Carry out yelling at:
	if the noun is Mabel:
		if Mabel is asleep:
			say "The Princess shoots straght up and say angrily, 'What in the hell? Mason? What are you doing here and why are you yelling.' In repsone you jsut giggle at her. 'Oh, grow up borther. What are we, 8?'[paragraph break]Still giggling you say, 'Okay okay. I am sorry.'[paragraph break]'Oh my stars mason,' she says,'And people think I am the childish one.'";
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
			say "That probadly not a good idea, they will hear you";
	otherwise if the noun is the Grue:
		if Entrance is dark:
			say "You think you hear someone speaking, you are not sure what they are saying, who or what they are, or where they are, but you think they are telling you to quite down.";
		otherwise:
			say "You think the grue is telling you to stop.";
	otherwise if the noun is the Natives:
		say "The local seems a be either crioius, concern or scared of you now.";
	otherwise:
		say "You yell at [the noun] nothing happens.";
		
Yelling is an action applying to nothing.
Understand "yell" and "shout" and "scream" as Yelling.

Carry out yelling:	
	if (the location of the player is not Princess room and the number of avisurite in the location of the player > 0) and (Mabel is asleep or Guard Fight is not happening) :
		try yelling at a random avisurite that is the location of the player;
	otherwise if the number of people in the location of the player > 0:
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
The maximum hit points of a person is usually 20.

When play begins:
	repeat with P running through people:
		now the current hit points of P is the maximum hit points of P.
		
check attacking something:
	if noun is player:
		say "Why are you hitting yourself?";
	if noun is not a animal that is alive and noun is not an Avisurite:
		say "violence is rarely ever the answer to things. ";
		
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
		[decides if the target drop something;]
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
		say ", kocking [one of][regarding target][their][or]the[at random] [item to drop] out of [regarding target][their] hands. ";
	otherwise:
		say ". "
		
to finger if (target - a person) is dead:
	if the current hit points of the target <= 0:
		if target is an Avisurite:
			say "[The target] falls to the floor.";
			now the target is defeated;
			[now every thing worn by the target is in the location;]
			now every thing carried by the target is in the location;
			now the target is nowhere;
		otherwise if target is player:
			say "[paragraph break]You've been injury one too many times. You are now dead.";
			end the story;
		otherwise if the target is Mabel:
			say "[paragraph break]Mabel is now die. You have failed the mission.";
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
	
instead of taking an animal(called the object):
	if object is dead:
		now the player carries the object;
		say "You have taken the [object]." ;
	otherwise:
		continue the action;
		
[The squirrel is an animal.
	
To moveSquirrel]

Section - Dimetrodoniod

The Dimetrodon is a pushable between rooms animal.
Understand "Dimetrodon", "Dimetrodoniod" and "Dimetrodon like creature" as Dimetrodon.
the printed name of the Dimetrodon is "Dimetrodon like creature".

The Description of The Dimetrodon is "This Creature look very simmilar to the excient Permain stem-mammal known as a Dimetrodon. Complete with a [sail] and two clearly different types of [teeth]. Yet the most notable different bewteen this creature and it Terran look alike is the  three long ant-like [antennas] coming out of its head. It species seems to be the top predator of the local ecosystem of the desert. [if Dimetrodon is alive]It seems to mine its own business and not seem to possess a threat to you. Looks like it likes hanging out around the lake[otherwise]It is now dead[end if]."

Instead of taking the Dimetrodon:
	if the Entrance is Dark:
		say "You are going to try taking ";
	if the Dimetrodon is alive:
		say "You are going to try carring that thing alive. Sure it might be mining it would bussiness now, but if you borther it, then it porabdly be more liekly to eat you than the Grue.";
	otherwise:
		say "This is very heavey. Maybe try pushing. Or maybe cutting it up into smaller pieces.";
		
Sail is part of Dimetrodon. The description of sail is "Very silimar to the sail of an actual Dimetrodon. It doral spins are even sticking out of the top." 
The Antennas are part of Dimetrodon. The description of The Antennas is "Growing out of top of the creature's head are three large and long ant-like Antennas. You known for a fact that the real dimetrodons did not have that, probadly."
Teeth are part of Dimetrodon. The description of Teeth is "Just like it counterpart on Early Permian Earth, it has large canines in the front and smaller uniformish teeth in the back."
Understands "dimetrodon teeth" as Teeth. understands "dimetrodon antennas" as Antennas. understands "dimetrodon sail" as Sail.

Dimetrodon meat is a thing. The description of dimetrodon meat is "This is the meat from the dimetrodon like creature you shot."

instead of attacking the dimetrodon when the dimetrodon is alive:
	say "That probadly not a good idea. It will almost surely kill you."

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
		say "[one of]Destipe it's wight, mass and the sand, you still are able to push[or]With all your strength you move the deatd creature just a little bit[stopping].";
	
Instead of pulling dimetrodon:
	if dimetrodon is alive:
		try attacking dimetrodon;
	otherwise:
		say "[one of]Destipe it's wight, mass and the sand, you still are able to drag[or]With all your strength you move the deatd creature just a little bit[stopping].";
		
Every turn when Dimetrodon is visible and Dimetrodon is alive:
	if Feeding the Grue has not happened:
		say "The Dimetrodon like creature [one of]is basking in the sun, peacefully[or]is approach by a bird looking creature with petrosuar like wings. It just looks at the bird thing, it scares it away[or]returns to basking in the sun[or]is basking in the sun, peacefully[or]It befiely turn to look at you, before returning to basking in the sun[or]It looks over at the planet's setting star and sighs[or]is basking in the sun, peacefully[or]is approach by a bird looking creature with petrosuar like wings. It just looks at the bird thing, it scares it away[or]returns to basking in the sun[or]is basking in the sun, peacefully[or]It befiely turn to look at you, before returning to basking in the sun[or]It looks over at the planet's setting star and sighs[or]is basking in the sun, peacefully[or]is approach by a bird looking creature with petrosuar like wings. It just looks at the bird thing, it scares it away[or]returns to basking in the sun[or]is basking in the sun, peacefully[or]It befiely turn to look at you, before returning to basking in the sun[or]It looks over at the planet's setting star and sighs[or]heads over towards the lake. Those croc-snake either flea or growl at it. The Dimetrodon just ingore them[or]lowers it head to drink somewater[or]drinks water as it is approach by one of crociline python things that chose to stand it ground instead of running away[or]is attack by the croco-python[or]and the croco-python fight[or] is struggling agianist one the croco-python things[or] is struggling agianist one the croco-python things[or]has killed the croco-python[or]is feasting apon the remains of the croc-python that tried to attack it[or]is eating the remain of one of the creature[stopping].";
	otherwise if starset is happening:
		say "The Dimetrodon like creature [one of]is basking in the setting light of the sun, peacefully[or]is approach by a bird looking creature with petrosuar like wings. It just looks at the bird thing, it scares it away[or]It befiely turn to look at you, before returning to basking in the sun[or]It looks over at the planet's setting star and sighs[cycling].";
	otherwise:
		say "The Dimetrodon like creature [one of]wonder arounds the oasis[or]looks up at the stars[or]looks at you[if The Location of Mabel is the lakeside oasis] and Mabel[end if][or]looks a bit sleepy[at random].";

Section - Crab

The Crab is an animal.

The Description of The Crab is "This 'Crab' has six legs instead of eight (or ten like the ones on Arkonkia) and seem to be just fine walking around in the [if starset has not ended] dry heat of the desert. Though it is dusk, so it is cooling off [otherwise] cold desert [end if]. Anyway beside these things it looks and acts just like a normal Crab."

Instead of an actor taking the Crab:
	if Crab is alive:
		say "You tried to cacth the crab, but [one of]scurries[or]moves[or]scampers[purely at random] away to quickly.";
		crabMoves;
	otherwise:
		continue the action;
		
instead of  an actor  attacking crab:
	if Crab is alive:
		try actor taking Crab;
	otherwise:
		continue the action;
		
instead of shooting crab with something:
	unless crab is dead or a random chance of 1 in 5 succeeds:
		say "The Crab [one of]scurries[or]moves[or]scampers[purely at random] away.";
		crabMoves;
	otherwise:
		continue the action;

Every turn when Crab is alive:
	crabMoves;
	if the player can see the Crab, say "The crab [one of]crawls along on the dry sand[or]scurries on by[or]stroll about, only befietly puasing to take a look at you before scampering away[or]digs in the sand looking for food[or]takes a little break in the shade[purely at random].";

To crabMoves:
	if Crab is in a room (called the current space):
		let next space be random room which is adjacent to the current space;
		if next space is Entrance:
			now next space is Lakeside Oasis;
		otherwise if next space is the Pod Interor:
			now next space is Empty Desert;
		if Crab is visible, say "The crab-like creature heads offs.";
		move Crab to next space;
		if Crab is visible, say "The crab-like creature wanders around the area.";
		


Chapter - Plasma Blaster and Shooting

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
		say "[the noun] does no have a safety mechanism of any kind." instead;
		
Check Turning safety off:
	if the noun is not a plasma blaster:
		say "[the noun] does no have a safety mechanism of any kind." instead;
	
Carry out Turning safety on:
	try switching on the noun;
	
Carry out Turning safety off:
	try switching off the noun;
	
Check Toggling safety:
	if the noun is not a plasma blaster:
		say "[the noun] does no have a safety mechanism of any kind." instead;

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
		say "You tired to pull the tigger, but you can't. You remmber that you have [the second noun]'s safety on. Try 'turn off the safety of [second noun].'"instead;
	

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
				say "It probadly best to try limiting your impact on this ecosystem, which you know nothing about. "; 		
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
		[now hasAttack of the noun is true;]
		
		
instead of shooting Wildlife with something:
	If Feeding the Grue is happening:
		Say “What are you a mad proacher, you can not kill all the wildlife in the desert. Try hunting some of the animals around the Fort. Or maybe go find that fruit.” instead;
	otherwise:
		Say “You think about going hunt, but you do not want to waste your ammunition by shooting your baster at wildlife when they are proposing a threat to you just yet. Plus it probadly best to try limiting your impact on this ecosystem you know nothing about.”instead;
		
instead of shooting Creatures along the shoreline with something:
	say "If you shoot one of them, you will not be able to get it without being attack by the others." instead;
			
Carry out an actor that is not the player shooting a person (called the target) with something:
	if second noun is switched on:
		[say "[actor] [one of]switch[or]toggle[or]turn[or]click[purely at random] of the safety of their blaster.";]
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

Knife is a kind of thing.

section - cutting

The block cutting rule is not listed in the check cutting rules.
Understand "cut [something]" as cutting.

instead of cutting coconut-thing:
	now the fruit flesh is in the location;
	now coconut-thing is nowhere;
	say "You slice the weird coconut like fruit or vegatbale or wahtever in half. In side you fell that it flesh is strangely like that of a pineapple. You craves out the yellow juicy fruit feash out of the shells and put it into your pack. And toss the shells aside.";
	try taking fruit flesh;
		
Check cutting something:
	if the player does not have a knife:
		say "You can't cut anything very well without a knife." instead;
	if the noun is the player:
		say "That would be very dumb." instead;
	if the noun is an Avisurite:
		try attacking the noun;
	if the noun is not an animal:
		say "What would be the point of cutting that." instead;

Carry out cutting an animal (called the target):
	if the target is dead:
		if target is dimetrodon:
			now dimetrodon is nowhere;
			say "You have cut the dimetrodon into smaller easier to carry pieces.";
			now the player carries dimetrodon meat;
		otherwise:
			say "You cut into the [target] with your knife. Nothing unexpected happens.";
	otherwise:
		say "You have to cacth it frist." instead;
		stop the action;
	
section - picking
	
Picking is an action applying to one thing.
Understand "pick [something]" as picking.

check actor picking a something (called target):
	if the target is not an lockable door:
		say "You can not picked that." instead;
	if the actor does not carry the multitool knife:
		say "You need your multitool to pick that lock." instead;
		
	
carry out an actor picking a door (called target):
	if target is locked:
		try actor unlocking the target with the multitool knife;
		if the the target is visible, say "[The target] opens.";
		now the target is open;
	otherwise:
		try actor locking the target with the multitool knife;	
	
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
			say "What? What kind of wierd are you? Oh, You mean with that? Why, she has enough screw loose for the both of you already. Perhaps you should be tighting some of your own metaphorical screws instead." instead;
	otherwise if the noun is an animal:
		say "Why. [The noun] is probadly not a robot. Beside, regardless if they are or not, they probadly have many loose screws already." instead;
	otherwise if the noun is a person:
		say "They probadly have enough screws loose already." instead;
		
Carry out an actor unscrewing something:
	if the noun is unscrewable:
		if the noun is the hyperspace radio parts:
			if actor is visible, say "That probadly not a good idea, you probadly need the remaining screws.";
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
					say "You ask Mabel to turn off the Panel for as you perpare to cut the wires.";
					try Mabel switching off panel #4;
				otherwise if Starset has ended and the Actor is Mabel and Mabel is not visible:
					try Mabel switching off panel #4;
				otherwise if Starset is happening:
					say "You reach up and swicth off the Control Panel.";
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
The maximum hit points of the player is 60.

The player holds 25 rations and a family photo.

The Description of family photo is "A picture of your family taken when you were younger. You, your twin sister[if Mabel is awake] Crown Princess Mabel[end if], your father [if Mabel is awake]the King of Arkonkia[end if]and your mother[if Mabel is awake] the Queen-consort[end if]. Destipe being very well off, your family had always lived very modestly. By for some reason you all decide to show off that day. [if Mabel is asleep][one of]You think about your sister and wonder how she doing[or]You take a good look at your sister in the picture. She has a very strong family resmbles to you[or]You take another close look at your sister. You not have a chance to see you since coming back from the war. Hopefully that all going to change soon[stopping][otherwise]You are happen to see your sister again.[end if]."

The blaster pistol is a plasma blaster. The Player holds blaster pistol. The Description of blaster pistol is "This is a extrmely completioated weapon that fire a ionized gas at something, in the from of a handgun. Please be careful and remmber basic gun safety. Though you fuohgt in a war, you do not have to be remind of that, right?"
The multitool knife is a knife. The player holds multitool knife. The description of multitool knife is "A very handy multitool with fancy gadgets and stuff. It has a knife balde of crouse. Be careful with it. It is sharp. It also have a small saw blade, varius type of srew driver heads and something that no one really sure what it suppose to be but it seems to be very good at picking the locks of some doors, but not others."

The spare blaster is a plasma blaster. The Player carries spare blaster. The Description of spare blaster is "This blaster pistol is used to belong to one of your fallen comardes."

The Description of yourself is "You are Lietenuat Mason, a young officer of the Democratic Federation. You are as good looking as ever."

[Federation Miliitary Uniform is clothing. The player wears Federation Military Uniform. The description of Federation Military Uniform is "This is a standard blue uniform of the servemen and women of the Democratic Federation Military.";]

Does the player mean shooting something with the The blaster pistol: it is very likely.
Does the player mean shooting something with the The spare blaster: it is likely.
[Does the player mean turning safety on with The blaster pistol: it is very likely.
Does the player mean turning safety on with The spare blaster: it is likely.
Does the player mean turning safety off with The blaster pistol: it is very likely.
Does the player mean turning safety off with The spare blaster: it is likely.
Does the player mean toggling safety with The blaster pistol: it is very likely.
Does the player mean toggling safety with The spare blaster: it is likely.]
Does the player mean doing something with the coconut-thing: it is likely.
Does the player mean doing something with Weird fruit flesh: it is very likely.
Does the player mean doing something with the Mouth of entrance: It is very unlikely


Section - Grue

The Grue is a person. Loincloth is clothing. The Grue wears Loincloth. The Description of the Grue is "The Grue is cowarding before the light. It left hand is holded flat above its eyes. Its wear a [loincloth] and carries somekind of staff."

The Grue's staff is a thing carried by the Grue. The Description of the Grue's Staff is "A extmrely tall staff. It is made out of some kind of bronze colored material." 

Understand "Troll" and "Breast" as Grue.

The maximum hit points of the Grue is 1.

before attacking Grue:
	say "The Grue can probadly take you. Then he will eat you. [if feeding the grue has not ended][first time]Perhaps you should try shooting at it or making a deal.[only][end if]";
	stop the action.
	
instead of pushing Grue:
	try attacking Grue;
	
instead of pulling Grue:
	try attacking Grue;
	
instead of cutting Grue:
	try attacking Grue;
	
Before shooting the Grue with something:
	say "Your shot hits a force field that surrounds the Grue. They luaghs a deep gruining luagh. Perhaps you should try talking to them. Why not try asking them about letting you in. Most Grues are very reasonable people, as long as they are not too hungry.";
	stop the action.
	
to dissatisfiedTheGrue:
	say "The Grue appears to be dissatisfied with [the noun] you offer him and gives it back to you.";

instead giving something to the Grue:
	if hasGrueBeenGivenDimetrodon is true:
		say "The Grue infroms you that it is stuffed.";
		stop the action;
	otherwise if isGrueFeed is true:
		if the noun is an animal or the noun is a fallen fruit:
			say "The Grue is take [the noun] and eats it.";
			now the noun is nowhere;
		otherwise:
			dissatisfiedTheGrue;
			stop the action;
	otherwise if the noun is coconut-thing:
		say "The Grue is take the coconut-thing. After taking a look at it, he throws it back at you saying, 'Cut it open.'";
		stop the action;
	otherwise:
		if the noun is Dimetrodon or the noun is Dimetrodon Meat or the noun is weird fruit flesh:
			say "The Grue takes [the noun].";
			continue the action;
		otherwise if the noun is an animal or the noun is a fallen fruit:
			say "The Grue is take [the noun] and eats it. But unforanately it informs you with it mouth full 'This it is tastey though, but it does not satisfy me.' You look down at your feet in failure.[paragraph break] Try returning with something else, maybe something [bold type]big[roman type] or something very very [bold type]nuts[roman type].";
			now the noun is nowhere;
			stop the action;
		otherwise:
			dissatisfiedTheGrue;
			stop the action;
					
Before giving the Dimetrodon to the Grue:
	now the Player carries the Dimetrodon;
		
after giving the Dimetrodon to the Grue:
	now the Dimetrodon is nowhere;
	if  isGrueFeed is false:
		say "The Grue devoured the Dimetrodon. It a very, well gruesome slight. But you seen worse then a giant creature messyly eating another raw. Afterwards the grue sit down, pats his stomach and asks you why you wacth him eat. You not quite sure yourself. You guess it was just a fasticating slight.";
		now isGrueFeed is true;
	otherwise:
		say "The Grue devoured the Dimetrodon. It a very, well gruesome slight. But you seen worse than a giant creature messyly eating another raw. Afterwards the grue sit down and patting his stomach. 'Thanks, now I am full' He tells you.";
	now hasGrueBeenGivenDimetrodon is true;
	
After giving the Dimetrodon Meat to the Grue:
	now the Dimetrodon Meat is nowhere;
	if  isGrueFeed is false:
		say "The Grue devoured the Dimetrodon meat. It a gruesome slight. After it is done it patts its stomach and let you known you can now pass.";
		now isGrueFeed is true;
	otherwise:
		say "The Grue devoured the Dimetrodon. It a very, well gruesome slight. But you seen worse. Afterwards the grue sit down and patting his stomach. 'Thanks, now I am full' He tells you.";
	now hasGrueBeenGivenDimetrodon is true;
	
before showing the Dimetrodon to the grue:
	now the Player carries the Dimetrodon;
	
instead of showing something to the grue:
	try giving the noun to the grue;

To say grue-deal-text:
	say "[if isGrueFeed is false]Your Grueish is a bit rusty, but after talking with the Grue for a while, you both seem to come to an agreement. It will let you into the fort if you feed it something. You think it’s specifically asking for two kinds of chewing(?). You have no idea what that means so you ask if there anything else it would want.  Then it asks for fruit or vegetable or a nut from the bush. It sounds like it only will let you in if you give it a certain kind of Animal or a certain kind of fruit-like thing.[otherwise][one of]'You already full filled your half of the deal.' the grue tells you.[or]'Thank you. You are now free to pass.'[purely at random]"

Table of Grue Responses
topic		reply
"dimetrodon"			"'Yes, two kinds of chewing'."
"deal/agreement"			"[grue-deal-text]"
"food/hungry/eat"			"'I am hungry,' It says 'I can eat anything, but I want something spefic. What do you want? Perhaps we can make arrangement.' You think that what it says."
"princess/mabel/twin/arkonkia"			"You think the Grue says something along the lines of 'You are here for Princess. Good luck. Pay too good. But, maybe we can make a deal?'"
"war/teaty/laws/empire/politics/ambassador/secetary-general"			"I appears that since he is a mercanary and from another galaxy he calim he does not care any of that stuff."
"hobbies/fun"			"The Grue says 'Eating. Cooking. Sleeping. Hunting. Thinking. Philosophy. '"
"grue/schoolar/mercanary/cooks/chiefs/lurk/yourself/itself/himself/themself"			"'I am a Grue,' it says proudly. 'We lurk. We wait. We eat. We survive. We are Philosophers, Schoolars, Chiefs and Mercanaries'."
"home"			"'Far away. Small world. Dim skies, red star. One half cook. Other side dark, lovely and beatiful, but frozen. Inbewteen comfortly. 'It mutters."
"light/afraid/fear/scared/sun"			"'Light is scarely. ' The Grue explains, 'Our star dangerous. Plus hurt eyes.'"
"arrangement/fort"			"[grue-deal-text]"
"job/work/holdout/tunnel"			"'I am a mercenary.' the Grue says 'they pay me good to guard fort.'"
"dark/darkness/shadow"			"'Comfort.' Grue's vocie sounds dreamingly. 'Safe.'"
"warm/twilight/peace"			"'Peaceful' the Grue sighs. 'comfortable.'"
"desert/heat/uncomfortable"			"'Desert is uncomfortable,' The Grue groans. 'I do not like heat or light. But not to bad.'"
"federation/state/president/chancellor/senate/excutive council"			"They calim not to care about this Federation Poltics."
"king/queen/kingdom/paraliment/prime minister"			"He calims not to care about your people's poltics."
"consortium"			"He calims they do not care about the poltics of the consortium."
"cold"			"'Cold is nice, in moderation that is.' The Grue replies."
"milkway"			"You think it telling you he came to this galaxy to find work."
"god/devil"			"'Long ago we Grues tought Milk Way was god and host star was deveil.'"
"leader/government/emperor/supreme"			"It hasn't been in contact with the grue home world for long time, so it doesn't known who the current Emperor of the Grues is."
"eyes"			"'My eyes hurt, thank you very much' You tell the Grue sorry."
"Philosophy/thinking"			"'I enjoy philosophy myself. Too bad your gruish is bad. Else I would share with you. Gruish is best language for philosophy.'"
"avisurites"			"'Avisurites are not very good eating. Only eat if nesscery or extremely anoyed. But these one pay good money and share food.'"
"hunting/sleeping/cooking"			"The Grue does not seem to have much to talk about that."
"in/pass/enter"			"[grue-deal-text]"
"pass"			"[grue-deal-text]"
"human/me/mason/you/I/annoying/bug"			"You humans are not very good eating. Only eat if nesscery or extremely anoyed."
"doc/doctor/med/mother/mom/ma/queen/birth parent"		"'My mother was a docotor,' The Grue replies."
"name"			"It does not seems liek they want to give you his name."
"age/old"			"You think he saying he is 3195 years. You have not idea what kind of years he is talking about."
"what"	"He sounds like he think you need to work on your listening skills."
"yes"	"The Grue looks at you confuse. 'Yes to what?' It growls."
"no"	"The Grue looks at you confuse. 'No to what?' It say back to you."
"sorry"	"The Grue becomes puzzle. 'What are you telling me sorry for?'"


instead of tasting the Grue:
	say "That would probadly brother the Grue, a little too much.";
	
instead of smelling the Grue:
	say "Unexpectely smells like mint.";
	
instead of listening to the Grue:
	say "The Grue is not making a lot of noise.";
	
instead of hugging the Grue:
	if Feeding the Grue has not ended:
		say "That probadly not a good idea.";
	if Night is happening:
		say "The Grue probadly does not want a hug.";
	otherwise:
		continue the action;
		
after of hugging the Grue:
	say "The Grue says something in Gruish you belive is along the lines of '[one of]Is this how your people's culutre say thank?[or]Please not agian.[stopping]'"

Section - The Princess

Mabel is asleep woman. Understands "fraternal twin sister", "fraternal twin", "twin", "twin sister ","sister", "Crown Princess Mabel", "Crown Princess", "Princess Mabel", "Princess" and "Other Half" as Mabel. Aquamarine Grown is clothing. The description of Aquamarine Grown is "It is just a simple plain aquamarine color dress, not to fancy. While the material might be a bit pricey, but it very modest in design." Mabel wears aquamarine grown. Understands "Mabel's dress", "Aquamarine Dress", "Dress", "Mabel's Aquamarine Dress", "Mabel's Grown" and "Mabel's Aquamarine Grown" as Aquamarine Grown. 

The description of Mabel is "[if Mabel is asleep]She is a very beatiful young lady not that much older than you. Though she clealy have not been able to clean hershelf up in the past week or so, she is clearly looks as good as ever. Her long wavy soft brown hair cascade down her shoulders and over her chest. She very obvoius an Arkonkian as she has green skin. A trait found in the majority of 'indigenous' Arkonkians. One of countless (and by far the most obviloius) mutantions that creation the human subspeices of [italic type]Homo Sapiens Arkonkiais[roman type] in the centuries of gentic drift bewteen the ship carring what would become the first Arkonkia got suck into that wormhole and Democratic Federation first making contract with the new civilation that formed on Arkonkia[otherwise]This is your tiwn sister, Mabel, the Princess of Arkonia. She is a very beatiful young lady hough she clealy has not been able to clear hershelf up in the pass week or so. But, just like you, she looks as good as ever[end if]."

the maximum hit points of Mabel is 50;

Instead of listening to Mabel:
	if Mabel is awake:
		say "[one of]She is quite[or]You hear her humming the tune of the Anthem of the Democratic Federation[or]She humms the Arkonkian national Anthem[or]You can hear her breathing[or]She make random noises[or]She says, 'I hate those [MabelAvisuriteInsult].'[purely at random].";
	otherwise:
		say "She has always been a quite sleeper.";
	
Instead smelling Mabel:
	say "By her smell you can tell that she hasn't take a bath in a long time.";
	
Instead of tasting Mabel:
	if Mabel is asleep:
		try kissing Mabel;
	otherwise:
		say "What kind of weirdo are you? Licking your sister."
		
To say MabelAvisuriteInsult:
	say "[one of][one of]avian[or]reptilian[or]dinosaur[or]archosaurian[or]dromaeosaurid[or]hawkish[or]dinosauran[or]dinosauroid[or]theropodan[or]therodonoid[or]dromaeosauridoid[or]saurischian[first time](For the record their hips are actually more mammal like)[only][or]war loving[or]peace hating[or]cry bady[or]war hawk[or]wellosa hating[or]velociraptor[at random] [one of]freaks[or]fiends[or]bastards[or]idiots[or]fools[purely at random][or]goofy looking velociraptors[or]lizard people[or]bird people[as decreasingly likely outcomes]";

To say MabelBattleQuips:
 say "[one of]'Brother look out.'[or]'Behind you.'[or]'Die! Die! Die![one of][or]you [MabelAvisuriteInsult][or]Die![as decreasingly likely outcomes]'[or]'This is what you get when you kidnapped me'[or]'The War is over you [MabelAvisuriteInsult][one of]!!!![or] you hear meee!!!???[or]. So accept that or, well.[then at random]'[or]'Wacth out.'[or]'Mason look behind you.'[or]'You want me come. Then come and get me.'[or]'No one allow to mess with me is my brother here. And I am the one allow to mess with him is me. [first time]And his girlfriend.' You whipser in her imforming to her that you two actually broke up. 'Oh, I am sorry,' She tells you before turning back to the Avisurite[if the number of Avisurites in the location of the player is greater than 1]s[end if], 'He is the only one allow to mess with me and I am the only one allow to mess with him.'[only][or]'Arkonkia number one!!!'[or]'Hey, Mason look out.'[or]'The tables has turn.'[or]'[one of]Eat this.[or]Hey [MabelAvisuriteInsult], Eat this.[or]Eat this you [MabelAvisuriteInsult].[then purely at random]'[in random order]"

To have Mabel fight:
	let the target be a random avisurite in the location of the Mabel;
	unless the target is nothing:
		if a random chance of 3 in 5 succeeds, say "[one of]Mabel says, [MabelBattleQuips][or]Mabel goes, [MabelBattleQuips][or]Mabels yells, [MabelBattleQuips][purely at random]";
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
		if a random chance of 1 in 8 succeeds, say "You are starting to think she is enjoying this way too much.";
				
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
	
To say PromtPlayerToAnswerMabel:
	say "([one of]Answer Mabel by entering[or]Enter[stopping] [bold type]YES[roman type] or [bold type]NO[roman type]) >".
		
To have Mabel cut parts:
	if the control panel #4 is switched on:
		if Mabel is visible and a random chance of 1 in 2 succeeds:
			say "Mabel syas, 'Oh, wait. Mason can you turn the Communcions off for me pleases
[command clarification break][PromtPlayerToAnswerMabel]";
			if the player consents:
				try the player switching off control panel #4;
			otherwise:
				say "'Okay then, I do it myself,' she sighs as she reeches up to flip the switch turning it off. She then proceed to cut the wires.";
				try Mabel switching off control panel #4;
		otherwise if a random chance of 4 in 5 succeeds:
			if Mabel is visible, say " Mabel reaches up to flip the switch turning it off before cutting the wiring.";
			try Mabel switching off control panel #4;
	try Mabel cutting hyperspace radio parts;
	if a Hyperspace radio parts are portable and a random chance of 3 in 5 succeeds:
		try Mabel taking hyperspace radio parts;
		
Requesting is an action applying to one thing.
[Understand "ask for [something]" as requesting.]

Carry out Mabel requesting the multitool knife:
	say "Would you like her to get the multitool knife for you? [command clarification break][PromtPlayerToAnswerMabel]";
	if the player consents:
		say "'If you really want to' you tell her. She nod her head up and down very emthuisatically. You hand over the multitool knife and get out of her want.";
		try the player giving the multitool knife to Mabel;
	otherwise:
		say "You poltiely tell her no and turn you attenion to the open wiring compartment";
		
Carry out Mabel requesting the hyperspace radio parts:
	say "Would you like her to get the parts for you? [command clarification break][PromtPlayerToAnswerMabel]";
	if the player consents:
		say "'You known that does not sounds like a bad idea' you reply back to her, 'Here take it.' You hand over the parts before adding, 'Thanks Mabel.'[paragraph break]'Your welcome,' she replies.";
		try the player giving the hyperspace radio parts to Mabel;
	otherwise:
		say "You poltiely tell 'No, no. I am fine Sister, I can so it'[paragraph break]'Are you sure?' she asks.[paragraph break]'Yes I am,' you repsone back you her.";

Every turn when Mabel is awake:
	let Mabel's curr loc be the location of Mabel;
	if an Avisurite is in Mabel's curr loc and can Mabel attack is true:
		if a random chance of 1 in 2 succeeds:
			have Mabel fight;
			now Did Mabel do something is true;
	If Mabel asking for knife is happening:
		if Did Mabel do something is false:
			if Mabel is visible, say "Mabel look for around for the multitool knife.";
		now Did Mabel do something is true;
	 if Mabel holds multitool knife and Exploring Command Center has ended and Stealing parts is happening:
		if Mabel is not in the fort command center:
			let the way be the best route from Mabel's curr loc to fort command center, using doors;
			try Mabel going the way;
			if Mabel's curr loc is fort command center and Mabel is visible, say "Mabel heads over to the communications control panel.";
		otherwise if wiring-compartment is closed:
			if Mabel is visible, say "Mabel removes the protective panel cover the wiring comparment for the communtion control panel.";
			silently try Mabel opening wiring-compartment;
		otherwise if hyperspace radio parts are in wiring-compartment:
			if hyperspace radio parts are uncutted and hyperspace radio parts are screwable:
				if Mabel is visible, say "You tell Mabel which parts you need to fixed the hyperspace radio.";
				if a random chance of 1 in 2 succeeds:
					have Mabel cut parts;
				otherwise:
					try Mabel unscrewing hyperspace radio parts;
			otherwise if hyperspace radio parts are cutted and hyperspace radio parts are screwable:
				try Mabel unscrewing hyperspace radio parts;
			otherwise if hyperspace radio parts are unscrewable and hyperspace radio parts are uncutted:
				have Mabel cut parts;
			otherwise:
				try Mabel taking hyperspace radio parts;
		if Mabel holds hyperspace radio parts:
			Now Did Mabel Steal Parts is True;
		now Did Mabel do something is true;
	 otherwise if Mabel holds Hyperspace Radio Parts and Fixing the Radio is happening:
		if Mabel is not in the Pod Interor:
			let the way be the best route from Mabel's curr loc to Pod Interor, using doors;
			try Mabel going the way;
			if Mabel's curr loc is Crashsite and the location of the player is Crashsite:
				say "Mabel disappears into the pod";
		otherwise if communications housing is closed:
			if Mabel is visible, say "Mabel opens the housing for the communications.";
			silently try Mabel opening communications housing;
		otherwise if Broken parts are in communications housing:
			silently try Mabel removing the Broken parts from communications housing;
			if Mabel is visible, say "Mabel removes the broken parts from the communications housing.";
		otherwise:
			silently try Mabel inserting Hyperspace radio parts into communications housing;
			if Mabel is visible, say "Mabel puts the parts you stole into the communication housing and hooks them up with the rest of the communication unit.";
			Now Did Mabel fixed the Radio is True;
			try Mabel closing the communications housing;
		now Did Mabel do something is true;
	otherwise if Mabel's curr loc is not the location of the player and Bored Mabel is not happening:
		let the way be the best route from the Mabel's curr loc to the location of the player, using doors;
		try Mabel going the way;
		now Did Mabel do something is true;
	if Mabel's curr loc is the location of the player and Did Mabel Steal Parts is True:
		say "Mabel says, 'I got the parts, now let's go.'";
		Now Did Mabel Steal Parts is False;
	if Mabel's curr loc is the location of the player and Did Mabel fixed the Radio is True:
		if Mabel's curr loc is Pod Interor:
			say "'I fixed it,' Mabel says triumphantly as she turn to face you, 'Would you like to do the honors?'[paragraph break]
'I would love to,' you tell her.";	
		otherwise:
			say "Mabel has appear and she look to be in a very joyuos and celebratory mood. 'Hey brother, guess what?' She asks you.[paragraph break]
'What?' you reply.[paragraph break]
'I fixed the pod's hypersapce radio,' She goes, 'Would you like to do the do the honors?'[paragraph break]
'I would love to,' you tell her.";
		now Did Mabel fixed the Radio is False;	
		now Did Mabel do something is True;
	if Mabel asking for knife is happening and the multitool knife is not carried by the player and the multitool knife is not carried by Mabel:
		if multitool knife is in Mabel's curr loc:
			try Mabel taking the multitool knife;
			now askingIsOver is true;
			Now Did Mabel do something is True;
	if Bored Mabel is happening and Mabel's curr loc is Fort Command Center:
		let the chosen panel be a random fort control panel in the Fort Command Center;
		if a random chance of 6 in 10 succeeds:
			if chosen panel is switched off:
				say "Mabel switchs on the [the chosen panel].";
				try mabel switching on chosen panel;
			otherwise:
				say "Mabel switchs off the [the chosen panel].";
				try mabel switching off chosen panel;
		otherwise:
			say "Mabel [one of]look at [if the location of holographic displays is the Fort Command Center]the holographic displays[otherwise][the chosen panel], then over at you and then back to the panel agian[end if][or]looks at [the chosen panel][or]look at all the buttons on [the chosen panel][or]hits a random button on [the chosen panel][or]walks other to [the chosen panel][at random] while going 'Hmmmm.'";
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
	say "[one of]It looks like Mabel might be geting a little bore[or]Mabel look like she geting a bit bore, wacthing you[or]Mabel rolls her eyes in boredom[or]Mabel fiddles with her hair[or]Mabels stands around growing inpatient[or]Mabel paces inpatiently[or]hums to her self[at random]";
	
to say IdelMabelText:
	say "[one of]Mabel hums to herself[or]Mabel fiddles with her hair[or]Mabel fiddles with her hair[or]Mabel plays with her hair[or]Mabel stands around patiently[or]Mabel hums to her self[or]You see Mabel looking down at her bare feet[or]Mabel looks around[or]Mabel stares up at the[if the location of Mabel is in Desert] beatiful night sky[otherwise] walls[end if][or]Mabel jumps up and down[or]Makes random noises[or]Mabel takes a deep breath[or]Mabel take looks at the dirty soles of her bare feet, before setting them down in dissgust[purely at random].";
		
instead of taking Mabel:
	if Mabel is asleep:
		say "'As you drag the princess out of bed, she wakes up. You stop as she rubbs her eyes open. 'You know what this remmbers me of'- she says -'the time I drag you out of out of bed when we were kids. Your remmber it right, Mason? Mom was mad that we running late for school and was yelling about how you were still in bed' She luaghs. You luagh to.";
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
		say "You hug her. It is no long before she fighting and struggling to break free yelling, 'Let go of me you stupid Dinosauroid fiends.'[paragraph break]You tell her, 'Mabel, it's me Mason.' [paragraph break]She pushs you back and says very loudly, 'Mason, what the hell are you doing here?' You sssssshh her to be quite. She was always a a bit obnoxious every since you were little. ";
		now Mabel is awake;
	otherwise:
		say "'I love you to Mason?' She says hugging you back.";
	
instead of kissing Mabel:
	if Mabel is asleep:
		say "You give the Princess a planotic kiss on her forehead. The Princess half awake says, 'ohhh, how sweet my dear Bobby.', pushing to her and kiss you back, right on the lips. You try to break away and but her grip is too tight. When she finally reallzie who is kissing her and jerk back. 'What the beeping hell,' She says, 'I understand that we are royality and all, but seriously brother that is a little wierd.' [paragraph break] You luagh. 'Well techically I was just kissing your forehead, Mabel.' She looks at you a bit puzzle. 'you were the one to made it weird.'[paragraph break]'Oh my stars, I thought you were, wait that was dream,' She looks around, 'Dang it, I am still here.'[paragraph break]'It appears so.,' you reply.[paragraph break]'Mason, I , I, I' She is so frusted she barrely able to speak, 'I am so so sorry. I. I-'[paragraph break]'It okay,' you interrupt, 'let's just move one and forgot about it. We have other things to worry about.'";
		now Mabel is awake;
	otherwise:
		say "'Woe, Mason what the heck do you think you're doing?'";
	now Did Mabel do something is true;
	
Instead of attacking Mabel:
	if Mabel is asleep:
		say "'Oouh,' the Princess says sitting up right, ready to fight back. 'You think you can, wait, what the, Mason. What you doing here?'		
		[paragraph break]
		You reply to her, 'Resucing you. After all we both known that even if you did have a way to get yourself out of this one, you have no where to go.'
		[paragraph break]
		'But, is hitting me really nesscary brother?' She asks you.
		[paragraph break]
		'Probadly not,' you luagh.";
		now Mabel is awake;
	otherwise:
		say "She punchs you back with a luagh. 'We are not little kids anymore.'";
	now Did Mabel do something is true;
	
instead of touching Mabel:
	if Mabel is asleep:
		say "The minute you touch she shout up right awake and tackle you to the ground. 'If you touch me agian, I am going to kill you goofy looking velcoraptor. You hear me? You hear me...' She puase and look down. 'Mason, what the hell are you doing here?'[paragraph break]'wish you a happy brithday. What do you think I am doing here?' You tell her. 'Can you get off of me now?'[paragraph break]'Sure thing, I am sorry' She says as she slide off of you.'May I help you up?' [paragraph break]You nod yes. SHe grab your hand and help you up. Afterwards you tell her 'thanks.'";
		now Mabel is awake;
	otherwise:
		say "'Oh Mason.', She giggles, 'I think we both ungrown this kind of stuff. Don't you?'";
	now Did Mabel do something is true;
	
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
		say "The bed to shakes The Princess wakes up a bit surpirses, worried and annoy. 'Mason? What are you doing here?' She asks you.[paragraph break]'Uh, waking you up my dear sister, duh.' you laugh as you stand up out of bed. She sighs in frustioned.";
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

Instead of asking Mabel for something:
	if second noun is spare blaster:
		say "'No,' she says, 'This my blaster now.'";
	otherwise if second noun is Aquamarine Grown:
		say "'What', she says offended, 'I am not going to take off my cloths for no reason, Mason. No on some strange planet with people after us. What kind you person asks their sister to take off their clothes anyway.'";
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

Table of Mabel Responses
topic						reply
"sorry"					"Your sister turn to you and says,'[one of]It is okay, borther. It not your fault.[or]You do not need to keep saying that. I undertand you feel bad, but it not your  flault,[one of]mason[or]brother[or]lietaunat[then at random][stopping].'"
"no"					"She looks at you with a puzzle look. 'No what?'"
"yes"					"She looks at you with a puzzle look. 'Yes what?'"
"Game/Chess/Cribbage"					"'You known I really like to play Cribbage or Arkonian Hexagon Chess when we get back home,' she says, 'But let's just focus on getting back for now.'"
"Grue"					"'A what?' She says in shoacked. 'A grue?'"
"Okay"					"'I am fine, really,' brother."
"Parent/Parents/Father/Mother/Dad/Mom/Mama/Mommy/Daddy/Mum/Pop/Papa/King/Queen/Monarch/Consort"				"'Hey, speaking of that,' she responses, 'how are mom and dad?'[paragraph break]You tell her that they are both are okay. She is happy to hear that."
"Apple/Natives/Native/Rodent/Locals"						"[if follow the natives is happening]'That Apple they give us was very good,' she says, 'any way what do you think we should do? Do we should ingore them and [bold type]STAY[roman type] here, or should we [bold type]FOLLOW[roman type] and see where they are tring to lead us?[otherwise if encountering the natives is happening]I think they want you to eat the Apple.[otherwise]Mason what are you talking about. I do not see any of that here[end if]"
"shoes/feets"					"[one of]'They stole my shoes, Mason,' She excalims, 'can you belive that? They took my shoes and now I am force to walk around bare foot.'[paragraph break]'Yeah, they tend to do that,' You tell her, 'In many of their culutres stealing an artlice of clothing or two a mean of humiliating captured foe.'[or] 'I still can not belive that took my shoes?' Mabel says.[stopping]"
"holdout/leader/kidnapping/kidnappers"					"[one of]These people are not contected to the Consortium, at least not after our President and their Supreme Chairman signed the teaty and it subsequent ratification. They think the treaty is unfavorable to the consortium, at least that thier leader told me, though I think that at least for her perosnally she also does not like the facts that it was neogatied Wellosa, or as she call them 'those tripod inhabiting tentacles squid beaked uhhhh', you knw on second thogh, while I am not sure what the word she used mean exactly, but base on the way she said it I am not even going to try to repeat[or]'I hate those [MabelAvisuriteInsult],' she says[stopping]."
"Kawkawgrrrr/Kawkawgr"					"'Is that what they are speaking?' she says, 'Uhhh.'"						

To say Evil-Ending:
	say "She looks betray. She is betray. By her other half. She asks you why. You tell her, 'I am not longing the spare now, sister.' And with that you out her out of her messery.
[paragraph break]The door into the room opens. You do not turn around to see who it is. You already known who it is. You spoke to her, 'We will never speak of this again'- You turn to look at the leader of the holdout -'Ever. Understand?' Though you have no idea if or how she ever have a chance to tell someone who would care to reavel what you did, at least one that would both belive her and actuall be in a postion to do anything.[paragraph break] 'Yes your highness,' She replies to you in perfect english with a Angloamerican-ish accent, 'I understand.'
[paragraph break]You into her eyes, her dromaeosaurid-iod body clearly reacting in shock to the way you are looking at her. 'Why do you insult me?' you scream with fruastion in Arkonkian, before switching to English you tell her, 'It's your Excellency.'(Though the Arkonkian for that is actually very silimar) pointing to your dead sister's limp body. You pay the holdout leader the amount you promise, infrom them to clear out and you leave the fort. The Grue looks at you confused as to where our sister is at. When they asks, you [one of]tell them to not say another word[or]quickly drawn your blaster and shoot the Grue dead, not wanting to leave any witeness[at random]. You sit out on the horizion. You look up at the night sky and cacth a gimpse of a flash of lighting. You lowed your head and see that there a big strom on the horizion. You hear some animals howling sillimarly to Fisften Volvez back home. [if the Dimetrodon is alive]As you pass the lake you realize that one of them is that Dimetrodon like creature. As you puase, so do they and it looks at you, as  if they known exactly what you did. But that is impossible right? You return to walking[otherwise]Then you walk[end if] back to the crashed pod, thinking how you keep your story straight.";
	
instead of shooting Mabel with something:
	if Mabel is asleep:
		say "you fire your [noun] at the Princess killing her in her sleep. Her eyes open wipe and she look right at you.[paragraph break][Evil-Ending]";
		end the story saying "Now what to do about your father.";
	otherwise if player is in the princess room:
		say "Mabel looks down at the area bewteen her chest and her belly, exmaning her burned clothing and fleash. 'Father's sick you known.' You tell her in a cually voice as if nothing just happen. She then look back up at you.[Evil-Ending]";
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
			say "'I still can not belive it actually not as bad as it looks', she says.";
		otherwise:
			say "'That what they make you eat?', she says.[paragraph break]
'Yet, it taste much better than it looks,' you tell her 'here have a little nimble.' You break a small piece off and hand it over to her.[paragraph break]
She taks it and goes, ''Hummmm, you are right it is much much better than it looks.'";
		now Mabel had a ration is True;
		increment current hit points of Mabel;
		say "Mabel health has increase by 1. [Current Health of Mabel]";
	if the noun is family photo:
		say "'[one of]Wait is that that photo? It is!!![or]Oh, look how young you are there?[or]I forgot how dad used to look before his hair started to turn gray.[or]Mom looks so pretty there doesn't see.[or][one of]I still can not belive you you brought this picture.[or]how many time are you going to show me this picture?[or]That is a very nice photo isn't?[then purely at random][stopping]', Mabel says.";
	otherwise:
		say "'That's Cool,' she says.";

Section - The Avisurites

Avisurite is a kind of person. The description of Avisurite is "You regonized these dinosaur looking creatures any where. They are Avisurites. Orginally hailing the planet Bok-to-wa-grunk (it sounds better when they say), they are built like a Velociraptor. Though unlike a Velociraptor they have four fingers (including a opposable thumbs) instead of three, a bird like beak and they stand almost as tall as a human on average. Their bodies are almost completely covered in feather. They are dressed in a stanard consortium militray uniform. [first time] You hvae no idea why these one kidanpped the Princess for? The war is over. But you have heard that their many in the consortium who do not like the terms of the peace treaty. The theory is that they belive they are part of an holdout hoping to restart the war by kidanping the hier to the throne of a prominent member state of the Federarion.[only]" 

Consortium militray uniform is a kind of clothing. The description of a consortium militray uniform is "A dark gray military uniform of the soider of the consortium. Most are design to fit the body plan of the Avisurite as they make most of the population of the consortium. They have a badge of their shoilder to mark their ranks."

[Instead of an actor wearing a consortium militray uniform when the actor is not a Avisurite:
	if the actor is not an avisurite:
		say "Unlike this uniform, [refer to the actor] is not Avisurite-shaped.";
		stop the action;]
	
The Holdout Leader is a female Avisurite. The consortium officer uniform is a Consortium militray uniform. The Holdout Leader wears the consortium officer uniform. The Description of The Holdout Leader is "This is the leader of the Holdout. She has a scar covering her right eye. Her grayish brown feathers are red at their tips. Her scales are a vivid orangish brown and are more shinny they most others of her species. [first time] This mean she (or her ancestors) most likely comes from a the most eatern tip of a continent from their southern hemishpere thier home planet [only]"

The maximum hit points of the Holdout Leader is 50.
	
Consortium Blaster Rifle is a kind of Plasma blaster. The Description of Consortium Blaster Rifle is "A disticntly Avisurite degisn for a Blaster. Though this one appear to be in very bad need of maintiance, thouhg it still a very deadly weapon."
Consortium Officer Pistol is a Consortium Blaster Rifle carried by Holdout Leader. The Description of Consortium Officer Pistol is "This is the single arm of choice of most consortium army officer."
	
An Avisurite has a truth state called hasAttack.
hasAttack of an Avisurite is usually false.

An Avisurite can be wounded or unwounded. An Avisurite is usually unwounded.
An Avisurite can be defeated or undefeated. An Avisurite is usually undefeated.

Avisurite Guard carries a consortium blaster rifle. Avisurite Guard wears a Consortium militray uniform.

Avisurite Soilder is a female Avisurite. Avisurite Soilder carries a consortium blaster rifle. Avisurite Soilder wears a consortium militray uniform.
	
Instead of smelling an Avisurites:
	say "You can smell the scent of that plant that they loves to add to their body hygiene products. Lavender mixed with burn popcorn.".
	
Operator uniform is a kind of consortium militray uniform. The description of operator uniform is "A plain white and light gray uniform wore by the tect support personal of the consortium military.".

Fierce avisurite is a female avisurite. Fierce avisurite is in the fort command center. Fierce avisurite wears a operator uniform.
Cowardly avisurite is a male avisurite. Cowardly avisurite is in the fort command center. Cowardly avisurite wears a operator uniform.

The printed name of fierce is "female operator". The printed name of cowardly avisurite is "male operator".

understands "female fort command center operator" and "fierce fort command center operator" as fierce Avisurite.
understands "male fort command center operator" and "cowardly fort command center operator" as cowardly Avisurite.
	
The maximum hit points of the cowardly avisurite is 30.
Fierce avisurite Blaster is a plasma blaster. fierce avisurite carries fierce avisurite blaster.

Every turn when the fierce avisurite is undefeated and the player is in the fort command center:
	let the gun be a random plasma blaster carried by fierce avisurite;
	if the gun is not nothing:
		try the fierce avisurite shooting the player with Fierce avisurite Blaster;
	
After the fierce avisurite shooting the player with something for the first time:
	say "She sure looks very aggressive and vicious. She is one fierce Avisurite.";
	now the Printed name of fierce Avisurite is "fierce Avisurite";
				
Every turn when the player has been in the fort command center and the Cowardly Avisurite is undefeated:
	moveCowardlyOperator;

to moveCowardlyOperator:
	if the current hit points of Cowardly Avisurite < the maximum hit points of Cowardly Avisurite:
		increase the current hit points of Cowardly Avisurite by a random number between 1 and 2;
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
			if Cowardly Avisurite is visible, say "The Cowardly Avisurite has appear in [next space], still panicing.";
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
	say "[regarding the second noun][They] probadly would not accept a peace offering.";
	
Instead of asking an avisurite for something:
	say "I do not think [regarding the noun][they] is going to give that or anything else to you.";
	
instead of showing something to an Avisurite:
	say "That probadly nto a good idea.";
	
Section - The Natives

Some Natives are people. The description of The Natives is "These intelligent little furry creatures that look like a cross bewteen a rabbit, a squirrel and a mouse do not stand not even a foot tall. You estimated their average hight to be about 23 centimeters, including their bunny like ears. They have a bushy squirrel like tail and a mouse like whiskers and hans and feet. They have three horns on thier heads. They do not to be very adanvace in terms of techology. Based on what you see it appear to be in their verison of the stone age, or at least the culture or people or tribe or band or whatever this predicary group is part of is. There is about 27 of them around you. They seem to be only wearing [necklaces], [leather] and [fur pelts]. They are carring [torches], [spears], [bows] and [quivers] full of arrows. But they do not seems to prossing any threat to you, at least not now. Infact it seems they are trying [if Follow the Natives is happening]to get you to follow them somewhere[otherwise]tell you something[end if]." Understand "Locals", "Rodent People", "Rabbit Squirrel Mouse Rat people" and "indigenous form of intelligent life" as the Natives.

The Natives holds some torches, some spears, some bows and some quivers. The natives wear some necklaces, some leather and some fur pelts.

The description of  torches is "A tiny torch that the native used to light their way through the night." The description of  spears is "A 'long' pointy pole weapon that you are assuming  like the bows that the native brought to defend themselves." The description of bows is "A simple range weapon that you are assuming like the spears that the native brought to defend themselves." The description of quivers is "What the natives are using to carry arrows for their bows in." Understand "arrows" and "quiver" as quivers. The description of necklaces is "They are make out of a wide varity of stuff." The description of leathers is "Most of the leather these people wear seems to be scaly". The description of fur pelts is "Fur on fur. When you think about it not that odd, ever if you have never seen it before. After all ever human have a bit of fur covering are bodies and we still wear wool."

Instead of shooting the Natives with a plasma blaster:
	say "You fire your [second noun] into the air, scaring away the natives. Mabel look at you and yellss, 'What is that for?'[paragraph break]'I have have enough of those stupid crazy little things,' you reply back to her.[paragraph break]She look at you in disbelief. 'Did the war change you?' She asks.[paragraph break]'Of crosue it did,'you says,'war changes everythng it touches. Every living thing in this universe changes everything it touches. It a crude world out, well everywhere. Even if the comfort fo are own home is not safe. Everythng living thing is fighting for it surive. I bet you they were not different. Franky, specialy after what you have been though this pass weeks, I am shock myself that you do not understand that.'[paragraph break]'True,' Mabel says angrily, 'but that does not give you a excuse to be a jerk.'[paragraph break]You get some thought to what she said and you reply back, 'Perhaps you are right about that, but I am not taking chances. We only have each other right now.' And with that you go into the pod. It is a couple minutes before Mabel follows you in.";
	now turnsInPod is 5;
	
Instead of attacking the Natives:
	say "You throw your fist at one of the rodent creatures. But you before you have a chance to hit [one of]them[or]it[or]him[or]her[sticky random] all the natives has the natives ran away. Mabel look at you and asks, 'What is that for?'[paragraph break]'They were starting to get on my nerves,' you reply back to her.[paragraph break]She look at you in disbelief. 'Did the war change you?' She asks.[paragraph break]'Of crosue it did,'you says,'war changes everythng it touches. Every living thing in this universe changes everything it touches. Even more some with they fight or otherwise interaction with each other. It a crude world out, well everywhere. Even if the comfort fo are own home is not safe. Everythng living thing is fighting for it surive. I bet you they were not different. Franky, specialy after what you have been though this pass weeks, I am shock myself that you do not understand that.'[paragraph break]'True,' Mabel says angrily, 'but that does not give you a excuse to be a jerk.'[paragraph break]You get some thought to what she said and you reply back, 'Perhaps you are right there sis, but I am not taking chances.' And with that you go into the pod. A mitute later your sister you joins you in the pod.";
	now turnsInPod is 5;
	
Instead of smelling the Natives:
	say "In the word of the crazy goofy hair guy in that anicent meme from that show about that since abosultely disproven crazy anicent astronaut conspiracy theory, 'You are not saying that they need a bath, but they need a bath.' Perhaps you should try teaching them about perosnal hygiene, wait a second.";
	
Instead of listening to the Natives:
	say "You can not understand a word they are saying. You would say that its greek to you, but durning the war you served along side a man from Greece and he taught you a good deal of it, so this isn't greek to you."
	

instead of giving something to the Natives:
	say "You try offering them [noun], but they do not seems to be interested in it beside possibly a child like curiosity of the strange object being offer to them by the strange giants from the sky.";
	
instead of asking the natives for something:
	say "Even if you they should understand each other, you do not think they would give you one of their [noun] to you.";
	
instead of showing something to the Natives:
	say "[one of]They seems to be filled with a hild like curiosity[or]'Woooow!' they go, in amazesment[purely at random] of the strange object being show to them by the strange giants from the sky.";


Chapter - The Desert

Wildlife is a Backdrop. The Description of wildlife is "Along the wide varity of plants this portion of the Desert is unexceptionaly filled all kind of animals. You occusional cross path with them as you make your way through their home. [paragraph break][one of][one of]You currently do not see much around you right now.[or]The '[hawks]' are still circling above you[or]These tiny rabbits looking things pop in and out of holes in the ground and standing up on their hindlegs like prairie dogs or meerkats. They appear to have three horns on their head.[or]'Birds' with  [one of]soar through the air with their[or]walk around on both their hind limbs and folded[as decreasingly likely outcomes] pterosaur like wings.[purely at random][or]You currently do not see much around you right now [or]Jellyfish’ full of air sacs of various sizes float around in the air almost like balloons.[or]A [one of]'lizard'[or]'snake'[or]Moderately Large Six-legend 'Crab'[or]squirrel-rat thing[or]prairielope[at random] goes past you, then makes its way up the dunes.[or]You see a yellow fox or coytee looking thing with a rocket strapped to it back chasing after a pruple and green perotosuar-winged road runner going by(?)[or]Far in the distance you see an herb of an animal tranvesting the desert. They are big with relatively long necks. They look vaguely like a stegosaurus, but instead the plates are on the tail and the strike are on the back along with three camel-like humps.[as decreasingly likely outcomes]".

The Desert is a region. Some hawks are in the Desert.  Wildlife is in the Desert.

Sand is a Backdrop. Sand is in Desert. The Description of Sand is "There are two opitons on sand:
[line break]One: 'I don’t like sand. It’s coarse and rough and irritating and it gets everywhere.'
[line break]Two: 'I like sand. Sand is squishy.'
[line break]In deserts people tend to towads the first."

Hawks are a Backdrop. The Description of hawks is "You look up. You see three of 'hawks' that prevoiusly tried to eat your falled comparoits soaring high above you, they rarly ever seem to flap their feathery petrosuar-like wings, circling like vultures."

Plants is a Backdrop in Desert. The Description of the plants is "There are many plants that inhabits this seemingly barren wasteland. The most common varity appears to be these hort troby bushs. Though there are some trees."

Sleeping Bag is a kind of wearable closed container. Sleeping bag are usually openable.

The sky is a backdrop in Desert. The Description of the sky is "[if starset is happening]It is evening time and the [the planet's star] is setting. The Sky is a beatiful painted canvus of orange red, yellow, blue and pruple. Above you see those [hawks] that tried to eat your fallen comardes after you first wander out of the pod to expolre the surrrouding area. The air is starting to cool, yet it still unbareabely hot.[otherwise]You look at the nightsky. It is dark and full of countless stars. There almost no light pollution this planet, so you can see many star. So many in fact, it almost look like you are in space. The two larger of the planet's [moons] hover in the sky next together.[end if]". The planet's star is a backdrop in Desert. Understand "sunset", "starset", "setting star", "host star", "yellow dwarf" and "sun" as the planet's star. The Description of the planet's star is "Over to the west the planet's star is setting. Very few people in the known univerise has never seen starset in some form before. They are not really that special, but they do have their different and they sure are beatiful." Moons are a backdrop. The description of moons is "You can see the two largest moons of the planet in the sky. One is dark gray the other is orange. They are both next together in the ngiht sky and are wanning gibbouses."


Section 1 - The Dune Valley

The Crashsite is a Room in Desert. "[one of]You get out of the pod and look around. This is where your escpace pod crashed. You are the only surivived. You are surouned by steep [dunes] in every direction expect one. It just your luck that a few klicks to the north is an towering [Avisurite Fort] where you just known they are keeping Princess Mabel. Destipe the fact it clearly has been aboodned at some point in the distance past. It look as if it been found new habitants. All around you are varius kinds of [wildlife] including varius [plants] and those '[hawks]' flying high above you in the [sky][or]This is where your escpace pod crashed. You are the only surivived. Your fallen compariots now lay beside the pod lying bearthen a [parachute] in make shift body bags, so that those 'hawks' and other wildlife will not  feast upon their corspes. You see to the north a [Avisurite Fort] not far off from your crashed pod. In every other direction there is only [dunes][stopping]. In side of the Crashsite is the [escpace pod], it's [airlock] [if airlock is open]wide open[else]shuted closed[end if]. You can see the [Avisurite Fort] from here."

Player is in the Crashsite.

The escpace pod is an fixed in place thing in Crashsite. The Description of the escpace pod is "This was the pod you and four other uses to escapace the pirate attack. It got hit and crashed here. From the outside you can tell it is badly damage. the the side is a little picture of the [the flag of the Democratic Federation]."
Understands "pod", "pod outsides", "escpace pod", "escpace pod outsides", "escpace pod's outsides", "pod's outsides", "pod exteror", "pod's exteror", "escpace pod exteror" and "escpace pod's exteror" as escpace pod. The flag of the Democratic Federation is a part of the escpace pod. The Description of the flag of the Democratic Federation is "An azure field with a white neolithic hand negative at it center with a wreath beanthide it and above it five different color dots in a crescent pattern representing the five founding members."

The Avisurite Fort and Dunes are backdrops. Dunes are in Crashsite and Sand Dunes. The Avisurite Fort is in Crashsite and Sand Dunes.
The airlock is a open door. The airlock is inside of the Crashsite and outside of the Pod Interor. The Description of the airlock is "This is the pod's airlock. It is [if airlock is open]wide open[else]shuted closed[end if]."

The Pod Interor is a room. "This was the pod you and four other uses to escapace the pirate attack. It got hit and crashed here. It look better on the inside than on the outside. [first time]By you knwon that the ion engines and the alcubierre are beyond repiar. So are the intertior gravitron manplators. But it not like you were even going to get it in space again either way. What matter is the hyperspace Communications are broken, but fixed if you can find the rights parts. But at least you can still pick up radio waves in regular space. Though all you get is static and the very faded songs of musican spekaing in a laugne you can not understand lightyears away and decades ago.[only]". Three Sleeping Bags are in the Pod Interor. Communications is a fixed in place device in the Pod Interor. Hyperspace communications is a device and a part of communications. Understands "radio communications", "pod's communitcation unit"and "normal radio" as communications. Understands "hyperspace radio" as hyperspace communications. 

The description of communications is "This is the pod's communications, it hyperspace radio transmitter and receiver are both damage. By at least the normal radio still works. To bad the nearest world inhabiated by a radio capable civiliaztion is lightyears away. And even then, they have yet to develop a form of pratical interplanetary travel much less faster than pratical light travel, so it be both pointless and illegal to try contact them. You could sit here and try to contact other surivies, but that not going to help you get off this rock[if Starset has not ended]. Might as well try to save the Princess. If you are kucky there other surviviors out there with a working hyperspace radio.Though it be nice if you could fix it yourself[otherwise if stealing parts has ended]. Perhaps you can try using the parts you stole to fixed it and contact someone for help[end if]. Rigth above it is the Housing for its internal components. [if Communications Housing is open]It's door is open attached to the ceiling[otherwise]it is closed[end if].".
The description of Hyperspace Communications is "This is the hyperspace communications unit. It send radio waves through hyperspace instead of well normal space. It is broken." The communications housing is a closed openable container and part of Communications. The description of communications housing is "This is the housing for all the parts of the pod of the communication unit." The broken parts are a radio parts in communications housing. The description of broken parts is "These are the broken parts of the hyperspace radio." Working parts are a fixed in place radio parts in communications housing. The description of working parts is "These are the still working parts for the pod's communications units." Understand "broken components" as broken parts.
Understand "Working components" as working parts .

Instead of taking working parts:
	say "There is no need to remove theses. They are working";
	
Instead of unscrewing Working parts:
	try taking working parts;
	
Instead of cutting working parts:
	try taking working parts;
	
Instead of unscrewing Broken Parts:
	say "Most of them are either longer attacted or can be easy remove with the used of tools, to cut and unscrew them. You can just take them.";
	try taking Broken Parts;
	
Instead of cutting Broken Parts:
	try unscrewing Broken Parts;
	
Instead of inserting Broken Parts into Communications Housing:
	say "Why would you want to do them back in.";

to RadioSound:
	say "You turn on the radio and not maker what frequency you turn it to, all you hear is static and the occsacaional hint of faded music from the nearest radio capable civization.";

Carry out switching on the Communications:
	RadioSound;
	
Carry out switching off the Communications:
	say "You flipped the switch and the communications unit goes slient.";
	
Carry out switching on the Hyperspace Communications:
	if Communications are switched off:
		try switching on Communications;
	unless Hyperspace Radio Parts are inside Communications Housing:
		say "[one of]You flip the swicth back and forth, it still doesn't changes any thing. You still do not hear a thing[or]You decide just for the hell of it see if it somehow magically fixed itself since the last time you checked.
	[paragraph break]
	Nope. It still hasn't magically fixed itself[stopping].";
		try switching off the Hyperspace Communications;
	otherwise:
		say "You and Mabel fiddles with the dials of the control panel for a bit before you two manage to get in contact with a communication operator for a Federation Space Force portoll's flag ship. You tell them what happen and they inform you that other have already tried to contact them and they be there in a few hours. You and Mabel decide to try geting some sleep before they arrived. You are awaken in the early hours of the morring before sunset to the sounds of a space craft landing somewhere nearby. You look over at Mabel's sleeping bag and find that she has already woke up. You find her standing outside the pod's airlock. You see Federation Troop transport ship landing on top of the dunes to your right. You and Mabel climb the dunes and are greeted by a five members of space force portol including an officer as they walk down the ramp of the ship. After the army platoon that they brough with them march down the same ramp and turn towards the fort, [EndText]";
		end the story saying "Thank you for play testing the game.";
		
Carry out switching off the Hyperspace Communications:
	say "You turn it off. It litteraly makes no differences.";	

Parachute is a fixed in place thing in Crashsite. The Description of Parachute is "Since there probadly no useful ways to uses the parachute in your current predicnment and you needed some repesctful means of making extra your fallen comardes' corpse from being scavgered on by the desert wildlife. You decide to used the pod's escpace parachute to cover the sleeping bags you put them in."

Instead of looking under parachute:
	say "You lift the parachute. Your fallen compariots are still in their makeshift body bags."
	
Instead of taking parachute:
	say "That kinda beats the purpose using it to protect your fallen firends."
	
Instead of pulling parachute:
	try taking parachute;
	
instead of pushing parachute:
	try taking parachute;
	
instead of pushing parachute to a direction:
	try taking parachute;
	

North of the Crashsite is Sand Dunes. Sand Dunes is a room in desert. "Travel down the valley of sand [dunes] you pod crash at the end of. To the south is where your Pod crashed. To the North is the [Avisurite Fort]." 

After deciding the scope of the player while the location is Sand Dunes:
	place the Crashsite in scope.

The Description of the Dunes is "Hills of sand all across the Deserts.".
The rentangluar base and the turrets are parts of the Avisurite Fort.

The Description of The Avisurite Fort is "This is a Towering Fortification is an old base that must of been deserted long ago, but there some signs it may be reoccupied. You recorganize the architurial style from the War. From its [rentangluar base] to its medevil-looking towering cirluar spire-like [turrets]. The designs it reeks of something builted by the four fingered reptiloid hands and avian beaks of the Syndicated Consortium. You seen countless building of a sillimar design durning the war. But the war is over, there is peace in the Orion-Cygnus Arm, But This isn't the Arm and the kidnapper are not with the Consortium. At least not any more."

The description of rentangluar base is "This is the base of the Fort."

The description of turrets is "The fort got three medevil-looking towering cirluar spire-like turrets. Why do you feel like you are going to have to go up one like the hero of some chesey fairy tail." Understand  "towers" as turrets.

Section 2 - Fort Curtilage

Curtilage is a region in desert. Fort frontage and Behind Fort are rooms in Curtilage. The Avisurite Fort is in Curtilage. North of the Sand Dunes is Fort frontage.

The Description of The Fort frontage  is "This is the front of the area in front of the front. To your North is the Fort, its enterance a dark tunnel that strangely have no door or anyone one guarding it. Off to the west is a small oasis surroudning a lake. And to the east is so bush. Behind you is the Vally in the dunes you came from. The Desert extend in all directions around you."

Inside of Fort Frontage is Entrance.
The Description of Behind Fort is "You are Behind of the fort. There is not much here. Perhaps you should turn back."

The Crab is in Behind Fort.

South of Behind Fort is Fort Frontage. Northwest of Fort Frontage is Behind Fort. Northeast of Fort Frontage is The Behind Fort. 

Section 3 - Oasis and Bush

Lakeside Oasis and The Bush are rooms in the Desert. [Lakeside Oasis is northwest of Sand Dunes. The Bush is northeast of Sand Dunes.]
The Avisurite Fort is in the Lakeside Oasis and the Bush. 
West of Fort frontage is Lakeside Oasis. East of Fort frontage is The Bush. North of Lakeside Oasis is Empty Desert. North of Bush is Empty Desert. Southwest of Fort frontage is Lakeside Oasis. Southeast of Fort Frontage is The Bush.

The Description of the Lakeside Oasis is "You are standing among the [Mongraves] that surround a beatiful [Lake] in the middle of th desert. A little peice of paradise in the middle of the otherwise barren desert. In the middle of lake is an [island]. You might of take a closer look, but these [Creatures along the shoreline] are lying and waiting like crocodile for some poor creature to come to close."

Dimetrodon is in the Lakeside Oasis.

Mongraves is scenery in Lakeside Oasis. The Description of the Mongraves is "Various trees, bushes and 'grasses' surround the lake."
Creatures along the shoreline is scenery in Lakeside Oasis. The Description of the Creatures along the shoreline is "These things that look crossed between a crocodile and a python yet with mammalian skin and hair lay beneath the surface waiting to snatch anything that gets too close. You would take a closer look, but you don't want to risk getting too close."
The Lake is scenery in Lakeside Oasis. The Description of the lake is "The lake strangely rather large. You wonder if it normal to have a gigantic lake in the middle of baren desert. Aren't desert suppose to be arid? In the middle of the lake is a [island]. Careful to avoid those mammalian-looking crocodile-python things, you decides if you can see anything swimming around in the lake.
[paragraph break]
[one of]The lake looks very deep[or]You see nothing by blue crystal clear water[or]The lake looks undisturbed[or]‘Trout’ swimming around in the lake. You try to take a closer look, but they get spooked and swim away.[or]A small ‘Anomalocaris’ appears briefly before disappearing.[or]A ‘Eel’ swimming around in the lake. You try to take a closer look, but it gets spooked and swims away.[or]One of the creatures that lined the eastern lakeshore like crocodiles swims pass you before crawling/slithering onto an island in the middle of the lake.[or]A few duck-billed seagull looking petrobirds pop out of the water before happily diving back down.[as decreasingly likely outcomes]";

The island is a part of Lake. The Description of the island is "Mongraves cover the island just like the shore."

The Description of the Bush is "You enter a small forest of sort, a bush. There are lot of bushes and shrubs in the bush, also trees. But some of the plants cacthes your eye more than overs.."

The weird plant is a open unopenable fixed in place container in the Bush. The coconut-thing is a thing in the weird plant. The description of the weird plant is "This tumbleweed-looking bush thing is closed in thick thorns."
The description of the coconut-thing is "This fruit or maybe vegatable has a hard shell just like a coconut’s. It is roots and vines stikcing out of it. What could be inside of it?"
Understand "coconut", "coconut thing" and "coconut-thing" as coconut-thing. the printed name of the coconut-thing is "wierd fruit".
Weird fruit flesh is a thing. The Description of fruit flesh is "The pineapple-y flesh of the bush coconuts, it also has watermelons like seeds."

instead of cutting weird plant:
	if coconut-thing is in weird plant:
		say "You cut a hole in the throny vines of the bush so you can retrieves that strange coconut looking fruit or vegatable or whatever.";
		now the player carry the coconut-thing;
	
Instead of taking coconut-thing:
	if coconut-thing is in weird plant:
		say "Be very carfuly for to poke yourself on the thorns of the bush, you take the coconut looikng thing. It is partly buried in the sand, but it lifts right out of the sand and the vines and roots snaps off easy.";
		if a random chance of 3 in 5 succeeds:
			decrease the current hit points of the player by 2;
			say "You accdient poke yourself, causing you to suffer 2 damage. [Current Health of the player].";
		otherwise:
			say "You are lucky you were extra careful.";
	continue the action;
		
Understand "coconut thing flesh" and "weird fruit meat" as weird fruit flesh.

fallen fruit is a kind of thing. fallen fruit is edible. Yellow fruit is a kind of fallen fruit. The Description of Yellow fruit is "There are couple of these yellow looking big strawberries thing on the ground in the bush." Understand "yellow strawberry" as yellow fruit. Red fruit are a kind of fallen fruit.The Description of red fruit is "Red bannana looking things that fallen on the ground near the lake." Understand "Red bannana" as red fruit. ground orange is a fallen fruit in bush. The Description of ground orange is "It looks kind like an orange but it grows in the sand."  Northeast of Lakeside Oasis is Behind Fort. Northwest of the Bush is Behind Fort.

Three yellow fruit is in the bush. Four red fruits are in the Lakeside Oasis. 
The ground orange is a fallen fruit in bush. The Description of ground orange is "It looks kind like an orange but it grows in the sand." 


Section 4 - More Desert

[Expanding the world]

Empty Desert is a room in the Desert. "There nothing by empty desert out here. It is easy to get lost out here. You might find yourself walking in cirlces. [if Mabel is in Empty Desert and turnsTraversingDesert > 0][Mabel] is still following you.[end if]"

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
		say "It seems you have gone in a cirlce.";
	otherwise:
		increment turnsTraversingDesert;
		now the player is in Empty Desert;

South of Empty Desert is Behind Fort. West of Behind Fort is Empty Desert. East of Behind Fort is Empty Desert. East of The Bush is Empty Desert. Northeast of the Behind Fort is Empty Desert. Northwest of Behind Fort is Empty Desert. Northeast of the Bush is Empty Desert. Northwest of Lakeside Oasis is Empty Desert.
North of Empty Desert is Fort Frontage. Northeast of Empty Desert is Fort Frontage. Northwest of Empty Desert is Fort Frontage.
Southeast of Empty Desert is The Lakeside Oasis. Southwest of Empty Desert is The Bush.

Chapter  - The Fort

The holdout fort is a region.

Section 1 - Fort Entrance

The Entrance is a dark room in the holdout fort. "This tunnel is the entryway into the fort. Ahead standing at the other end of the Tunnel, blocking your away is [Grue] guard cowarding in the light.".
Before printing the name of a dark room, if room is Entrance, say "Entrance.".

Rule for printing the description of a dark room:
	if location is Entrance:
		say "You are now standing in a partly lit tunnel that leads into the fort. The Avisurites have a strange taste in architecture. [paragraph break]You known it very dark in here, you might be eatten by a Grue.[paragraph break]";
		try examining light switch;
	otherwise:
		say "It is dark in here."

The Walls are a Backdrop.
The Walls are in the Holdout Fort and Curtilage.
The Description of the Walls is "They are just the walls of the fort."

The Mouth of entrance is a door. The mouth of entrance is north of Fort Frontage and south of The Entrance.
The description of mouth of entrance is "This is an opening of the [if the Entrance is dark]dark [end if]enterance into the fort[if the Entrance is lighted] where the Grue stays guard[end if].".

The light switch is a fixed in place device in The Entrance. The Description of the light switch is "It is simple single plastic lightswitch."
Understands "lights" and "light switch" as light switch.

Before examining the light switch when in darkness:
	say "On the wall you see, barely visibley from the light bit of light pouring out of the mouth of the entrance, you see a switch." instead;
	
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
		say "That probadly not a good idea. The Grue might try something.";
		stop the action;
	otherwise if the Entrance is dark and the light switch is switched off:
		say "The light is already off";
		stop the action;
	continue the action;

Before touching the Walls:
	say "You can fell it." instead;

The Grue is in the Entrance.

Section 2 - Inside Fort

The Atrium is the rooms in the Holdout fort.

North of the Entrance is the Atrium. The Description of the Atrium is "The atrium is qlient and stinced. It very noce looking actaully. It is a vast chamber where golden sand still clings to the polished stone of the [walls], remnants of years spent abandoned under unforgiving sun. [if starset has not ended]Evening tiwilight comes in through[otherwise]Light of the planet's two largest moons shine in from[end if] the [windows ] on the [high ceiling], illuminating the marron [banners] that hanging from the otherwise bare walls, baring a striking [emblem].
[paragraph break]You look around there are lots of [crates]. There are also three doors. One to north the that is open. As well as one to the west and another to the east which are both closed. There also the big opening in the south which you entered the fort from.[if starset has not ended and avisurite guard is undefeated] There is alone Avisurite guard. You can either fight with the guard(which is probadly not a good idea), try going north to sneaking among the crates to get to the northern door, or try seeing what behind the other two doors.[end if]"

Sand is in the Atrium.

crates are scenery in Atrium. The Description of the crates is "There are many wooden crates scatter all over the Atrium.";

Hallway is a room in the Holdout fort.
The western door is a door.
the western door is west of the Atrium and east of the hallway. The western door is lockable and locked. Western door has matching key multitool knife.
The description of The western door is "This is a door, it is label in the Avisurite language of Kawkawgrrrr, 'western wing, command cennter'."

The eastern door is a door. The eastern door is east of the Atrium and northeast of the second floor landing. The eastern door is unopenable and locked.
The description of The eastern door is "This is a door, it is label in the Avisurite language of Kawkawgrrrr, 'eastern wing, living quarters'.  You probadly do not need to go in there."

[instead of opening western door:
	say "The door appear to be locked, beside there no way you can get to it without being see by the Guard.";]

instead of opening eastern door:
	if starset has not ended:
		say "The door appear to be locked, beside there no way you can get to it without being see by the Guard, sorry.";
	otherwise:
		say "The door will not open."
		
instead of unlocking eastern door with something:
	say "This door will not open, even when you try pickhing it with you the tools on your multitool."

The high ceiling and the windows is a scenery in the Atrium.
The description of the high ceiling is "You look up at the grand ceilings of the Atrium. It as a few glass windows scatter about builtied right into it."
The description of the windows is "There just plain glass squares builted into the ceiling from which the last bit of the day's dying light shines through.".
The banners are backdrops. Emblem is a part of the banners. The banners are in the Atrium. 
The description of the banners is "Marron colored vexillum silimar to the battle banners of the Consortium. The symbol they bare a strong is silimar enough with that of those."

Understands "vexillum" and "holdout banner" as Banners

Understand "symbol", "holdout symbol", "holdout emblem", "Avisurite Symbol" and "Avisurite emblem" as emblem. The description of the emblem is "Very silimar to the gray, braonze and azure colored mess of gears, drawing compasses, spears and coins of the Consortium Forces, expect it adds an yellow equilateral triangle. You wonder what that means?".

The Avisurite Guard is a Male Avisurite in Atrium. [The Avisurite Guard wears a Consortium militray uniform.]

Section 3 - Prison Turret

bottom of prison turret, top of prison turret and Princess room are rooms in holdout fort.

Northern door is an open door. The description of the Northern door is "The sign above this door says in Kawkawgrrrr 'Prison Tower'." The northern door is north of the Atrium and south of bottom of prison turret.

The bare spiral staircase is a door.
The bare spiral staircase is up of bottom of prison turret and down of top of prison turret. 
The description of the bottom of prison turret is "You are the the base of the prison tower. Behine you is the [northern door] uses to enter from the Atrium. [one of]Looking around you see that it's[or]The room is[stopping] just a baren empty space at the bottom of a medival looking stone tower with a just a [bare spiral staircase] going up. [first time]'Okay, what is this a fairy tail? you think to yourself, 'I mean there are dragons, trolls and quests. Like [if dimetrodon is dead] you already slayed one dragon[otherwise]fought a war against a race of sort of 'dragons'[end if], make a deal with a troll and now you are stroming a castlet and climb a tower to save a princess from like a bundle of other dragons. It is the 4th mellium C.E., A.D. or whaterver you want to call it and This is reality. This is reality!!!! What the heck? What nexts? Some epic twisted that the Princess as serectly run away to married the High Excutive Councilor of the Consortium? Is the Chanecllor of the Federation actucally an evil derk sorceress planing on taking over galaxy? Has the President been a robot this whole time? Is a wizard going to show up out of not where and save the day at the last moment? Are Avisurites really five gnomes stacked up on top of each other.'
[line break]'Just take a deep breathe Mason', you tell to yourself 'just take a deep break and let it all go. Just calm yourself now and go up the stairs. The long stairs up the tall tower.'[only]". 

The description of the top of prison turret is "Just a baren empty space at the down of a medival looking stone tower with a just a [bare spiral staircase] going down to the bottom. To the north is into a [wooden door] into a room.[if the wooden door is closed] It is closes[otherwise]It is now open[end if]. [if knob is fixed in place]It also has a door [knob].[end if]"

The description of the bare spiral staircase is "A bare stone spiral stair case. The consortium is litteraly just as adavance as the Federation and this fort as a spiral staircase, but not an evelator. You desgiend this thing. You want to talk to the Architect and give then a peice of your mind."

The wooden door is a door.
The description of the wooden door is "The door itself is made out of what you recoginize as the wood from a tree navite to Bok-to-wa-grunk, though to surive lighting stirkes and forest fires[if knob is fixed in place]. But it's [knob] still to be made out of a material not has resistance to fire or lighting and it attached to the door by two screws[end if]."

Knob is a screwable fixed in place thing in top of prison turret. The description of the knob is "It is door knob. It has a lock built into it. What did you expected." Understand "door knob" as knob.

The wooden door is north of top of prison turret and south of Princess room.
The wooden door is closed and locked. Wooden door has matching key  multitool knife.
		
instead of cutting the wooden door when the wooden door is openable:
	say "You used the tiny saw blade to saw a hole in the door. It took you a much unbeliveabley shorter amount of time than anyone would reasonablely expect. Though interesting all the noise you where making did not awake the princess who is sleeping in her bed.";
	now the wooden door is open;
	now the wooden door is unopenable;

Before deciding the scope of the player when the wooden door is unopenable:
	if the player is in top of prison turret:
		place the Princess Room in scope;
	if the player is in Princess Room:
		place the top of prison turret in scope;

before opening the wooden door:
	if wooden door is locked:
		say "The locked seems to be locked. Well it good thing you have a key. Actually you do not have it. Perhaps there another way of opening it. [one of][or][or]Maybe you can looking at it to see if you can figure out a way to do it.[then purely at random]" instead;
		
instead of unlocking the wooden door with something:
	If the wooden door is locked and the second noun is not the multitool knife:
		say "Well it good thing this is the key to open the door. Actually it is not the key. Perhaps there another way to unlock or open it.  [one of][or][or]Maybe you can looking at it to see if you can figure out a way to do it.[then purely at random] Maybe using something you have on you.";
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

instead of shooting knob with something:
	if knob is fixed in place:
		now the wooden door is unlocked;
		now the wooden door is not lockable;
		say "You shoot the knob off the door.";
		now the knob is portable;
	otherwise:
		say "There no point in that."

The description of the Princess Room is "The room is a half cirlce. Taking up half of the top of the turret. There is a [bed][if Mabel is asleep] on which the princess is sleeping[end if]. All around are the holdout's banners. There are also windows made of glass with steel jail cell like bars."
The Printed name of the Princess Room is "The Princess's Cell."

Bed is enterable scenery supporter in Princess room. Mabel is on bed. Mabel is asleep.  The description of the bed is "It a very nice and fancy bed. And not just for a prison cell. It also like, no, no do not go there."

Banners are in top of prison.

Cell windows are scenery in the Princess room.The description of the Cell windows is "They made of glass with steel jail cell like bars."
	

		
Section 4 - Command Tower

The description of Hallway is "A narrow hallway. To the west, ahead of you is a [carpeted spiral staircase] ."

West of hallway and down from the Second floor landing is carpeted spiral staircase.
Carpeted spiral staircase is a door.
The description of the carpeted spiral staircase is "A spiral staircase that is carpeted. The consortium is litteraly just as adavance as the Federation and this fort as a spiral staircase, but not an evelator. Who desgiend this thing. You want to talk to the Architect and give then a peice of your mind."
Second floor landing is a room in holdout fort. The description of the Second floor landing is "This is the landing of the second floor of the fort. You do not have time to explore this fort. There is a [carpeted spiral staircase] heading back down and [another spiral staircase] heading back up. You known above you is the command center."

Up of second floor landing and down of fort command center is another spiral staricase. another spiral staricase is a door. The description of the another spiral staircase is "How many spiral staircases are in this stupid fort."


Fort command center is a room in holdout fort. "The room is full of control panels and [holographic displays]. It must be the command center for the fort, where the holdout run all of their operations."

Banners are in the fort command center.

[Houldout leader is in the Fort command center.]

	
To say panelDescription:
	say "This is a white and light gray control panel it looks just like all the other ones in the room. It is cover with diplays and buttons".

Fort control panel is a kind of a device. A fort control panel is fixed in place. A fort control panel is usually switched on. The description of fort control panel is "[panelDescription][if switched on] glowing sky blue, orange and white[end if]."

instead of listening:
	if the location of the player is fort command center and control panel #4 is switched on:
		say "You can hear something coming control panel #4. You briefly turn your attenion to the panel";
		RadioSound;
		try examining control panel #4;
	otherwise:
		continue the action;

control panel #1 is a fort control panel in fort command center.
control panel #2 is a fort control panel in fort command center.
control panel #3 is a fort control panel in fort command center.
control panel #4 is a fort control panel in fort command center. Control panel #4 is switched off. The wiring-compartment is a closed openable container. It is part of Control Panel #4. The description of Control Panel #4 is "[panelDescription][if Control Panel #4 is switched on] glowing sky blue, orange and white[end if]. This one looks like it contains the controls the fort's Communications. The protective sheet of metal [if the wiring-compartment is closed]covering the internal compontents seems to be loose[otherwise] meant to protects it inside has be set asided[end if][if hyperspace radio parts is fixed in place][one of][or]. Perhpas you can try open up it wiring compartment and see if there any part you can take to fixed the Pod's hyperspace radio[stopping][end if]." The description of wiring-compartment is "[if the wiring-compartment is closed]The protective metal covering for the wiring of Panel #4 seems to be loose[otherwise]You can see into the wiring compartment of the forth control panel. You see it protective panel is off to the side."

Understands "protective metal panel covering", "compartment" and "wiring compartment" as wiring-compartment when hasExaminedPanel is True.

The printed name of wiring-compartment is "wiring compartment".

instead of opening control panel #4:
	try opening wiring-compartment;
	
instead of closing control panel #4:
	try closing wiring-compartment;

Holographic displays is scenery in fort command center. "There is a large Blue holographic projection of the Holdout's plans and stuff. There also many smallers ones too."

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
	
[TurnToSwitch is a number that varies. TurnToSwitch is 0.]
[TrunToSwitchCount is a number that varies. TrunToSwitchCount is 0.]

[every turn when Exploring Command Center has not happened:
	if TrunToSwitchCount = TurnToSwitch:
		if control panel #4 is switched on:
			now control panel #4 is switched off;
		otherwise:
			now control panel #4 is switched on;
		now TrunToSwitchCount is 0;
		now TurnToSwitch is a random number between 3 and 7;
	otherwise:
		increment TrunToSwitchCount;]
	

instead of an actor switching on control panel #4:
	if the fort control panel is visible,say "You hear radio static.";
	now control panel #4 is switched on;
	now switchesControlPanel is true;
	[if hasExaminedPanel is false:
		now hasExaminedPanel is True;]
	
instead of an actor switching off control panel #4:
	if the fort control panel is visible, say "It goes quite";
	now control panel #4 is switched off;
	now switchesControlPanel is true;
	[if hasExaminedPanel is false:
		now hasExaminedPanel is True;]

carry out listening to control panel #4:
	if control panel #4 is switched off:
		continue the action;
	otherwise if Hyperspace Radio Parts are uncutted:
		RadioSound;
		
After examining Control Panel #4:
	if hasExaminedPanel is false:
		now hasExaminedPanel is True;
		
Some hyperspace radio parts are a screwable fixed in place Radio Parts in wiring-compartment. The description of hyperspace radio parts is "These are varius parts for a hyperspace radio. Incluing, by the looks of it, the ones you need to fixed your radio.[if fixed in place]It is attacted to the the rest of the control panel. Maybe try removing the screws and cutting the wires[end if]."
Wiring is part of hyperspace radio parts. The description of wiring radio parts is "[if hyperspace radio parts is uncutted]These are the wires keeping the hyperspace radio parts attached to the rest of the panel[otherwise]Look you at the cutted wires sticking out of the hyprspcae radio part that you need[end if]." Understands "wires" as wiring.

instead of cutting wiring:
	try cutting hyperspace radio parts;

instead of a person(called the actor) cutting hyperspace radio parts:
	if hyperspace radio parts are uncutted:
		if control panel #4 is switched on:
			if the Actor is visible, say "[refer to the actor] start cutting the wires conntecting the parts that you need with the rest of the panels.";
			let damage be a random number between 3 and 5;
			decrease the current hit points of the the actor by damage;
			if the Actor is visible:
				say "'ZAP! [if the actor is the player] You dumby. You[otherwise] Oh no, you guys[end if] forgot to turn off the panel, now [refer to the actor] has been electrocuted. [paragraph break][refer to the actor]take [damage] damage.[Current Health of the actor]";
			otherwise if the Actor is Mabel:
				say "By the way whiel you where not wacthing her, Mabel forgot to turn off the panel and now [refer to the actor]take [damage] damage.[Current Health of the actor]";
			finger if the actor is dead;
			Now Panel #4 is switched off;
			if the Actor is visible, say "You turn off the Panel and cut the rest of the Wires.";
		otherwise:
			if the Actor is visible, say "[refer to the actor] cut the wires conntecting the parts that you need with the rest of the panels.";
		now the hyperspace radio parts are cutted;
		if hyperspace radio parts is unscrewable:
			if the Actor is visible, say "Now free, all the parts fall to the bottom of the compertment. Waiting for someone to take them.";
			now hyperspace radio parts is portable;
		otherwise:
			if the Actor is visible, say "Now [refer to the actor] just need to unscrew the screws.";
	otherwise:
		if the Actor is visible, say "There is no need to cut them, they ahve already been cutted.";
	
instead of taking hyperspace radio parts:
	if hyperspace radio parts are fixed in place:
		say "They appear to be attached to the panel. Try getting them loose first.";
	otherwise:
		continue the action;

[holdout leader is in fort command center.]	

Part - Scenes

section - Feeding the Grue

Feeding the Grue is a scene.

isGrueFeed is a truth state that varies. isGrueFeed is false.
hasGrueBeenGivenDimetrodon is a truth state that varies. hasGrueBeenGivenDimetrodon is false

Feeding the Grue begins when the Entrance is lighted. [light switch is switched on for the first time].

Before going north from the Entrance when Feeding the Grue has not ended:
	if Entrance is dark:
		end the story saying "You were eatten by a Grue.";
	otherwise:
		say "The Grue looks at you. You known that it will not let you by.";
		stop the action.

Feeding the Grue ends when isGrueFeed is true.

After giving the fruit flesh to the Grue:
	say "The Grue seems to very much like the taste of the pineapple like flesh of the thing you got from that plant. He eats it down in only a few bits. He nods at you to let you known you can pass through, for now at least.";
	now the fruit flesh is nowhere;
	now isGrueFeed is true;
	
When Feeding the Grue begins:
	say "You turn. That is when you you see, you see it, cowarding before the light. It's a gruesome trolllike creature. Hunche back, large musclar body. Pale greenish gray tinted skin. You immediately recognizes this creature as a Grue. They hailing from a dwarf planet orbiting a red dwarf in the Large Magellanic Cloud. They are known for their bottomless hungry and love of the dark.";
	
When Feeding the Grue ends:
	Now fruit flesh is edible;
	
Instead of eating fruit flesh when Feeding the Grue has not ended:
	if Feeding the Grue is happening:
		say "You would eat it, but you think maybe this is something that the Grue might want.";
	otherwise:
		say "You are not too sure about eating this.";
		
Instead of eating Dimetrodon Meat:
	say "It probadly not a good idea to eat strange meat raw. [if Feeding the Grue is happening]Perhaps the Grue might want to eat it.[end if]".
	
Section - Returning home

The printed name of Mabel is "The Princess".

Returning home is a Scene. 
Returning home begins when Mabel is awake.
when Returning home begins:
	now the printed name of Mabel is "Mabel";
	try Mabel getting off bed;
	say "'Oh, okay. Right. But seriusly what are you doing here. Resucing me. I really appreciate it and I understand I am the heir to the throne, so really one would want be back home safetly. But you already fought in the war, should have to put it on yourself to come here to save me. Besside we both known that I am more than of Rescuring myself, I am not some Damsel in distress in some fairy tail. In fact I was slowly coming up with a plan to break out of here.'[paragraph break]'But then what Mabel?' You ask her, 'There nothing but desert for kilometers around. Can you rescure yourself from heat stroke or thrist.'[paragraph break]'I am well ware that is the one thing I could not figure out. But I guess I do not have too now that you are here.' she replies.[paragraph break]'Plus you know I can not let anything happen to me baby sister,' you tease her as you used to do all the time. She has always been the more childish one bewteen the two of you, destipe being three minutes older. Though you do known she is indeed more that able to hand hershelf. Infact she wanted to fight in the war too, but she is the heir and you are the spare. That is actually one of the few times you that fact actually work in your favor.[paragraph break]You decides to take some time explaining the entire stituion to her. After filling her up to speed about the your predictament, she asks, 'So what exactly is the plan?'[paragraph break]You hand her the spare blaster pistiol and tell her, 'follow me'.[paragraph break]'Shouldn't I like have a premit or soemthing to used this?' she asks you pointing it to the ground. [paragraph break]'Not it this siutiution,' You tell her, 'I am not going to leave my twin sister defenseless as we risk our lives tring to get out fo here.";
	now Mabel carries spare blaster;
	now Did Mabel do something is true;
	move Holdout Leader to the Atrium;
	move Avisurite Soilder to the Atrium;

	
Returning home ends quitely when Mabel is in Crashsite for the first time and Stealing parts has not ended.
Returning home ends victoriusly when Mabel is in Crashsite for the first time and Stealing parts has ended.

When Returning home ends victoriusly:
	now Hyperspace radio parts are portable;
	
When Returning home ends victoriusly:
		say "You look at the Pod. Now you can fixed it's radio and return back home.";
	
[Instead of going south during The Returning home:
	say "You and Mabel head down the stairs...
	[paragraph break]To be countine....";]
	
To say EndText:
	say "They led you both aboard and ask if you need anything. You and your sister both look at each other. [paragraph break]
'I think we both just want breakfast,' you reply.
[paragraph break]'Yes, just Breakfast,' Mabel says. 
[paragraph break] The commanding officer quickly look at both of you and says, 'Okay then, I will make sure there something to eat for both of you when we get back to the flag ship. In the meantime just relax.'
 [paragraph break]And With that the ship transport took off. Once it lands in the flag ship's hangar, you are quickly take to the ship's mess hall with the other surivors and feed breakfast. Once you both have eaten your meal you are both led to a place to have quick medical diagnosises run on both of. After you pass with flying colors, you are allow to clean yourself up and check on your sister. After learning she is in fact doing fine, at least physically, you that the bluck of the Holdout forces has been rounded up. The ones that  have been cacthed alive will be handed over to the Consortium which will figured out what they want to do with them. The rest are belive to be on the run.
[conditional paragraph break] It takes you and your Sister three days before you manage to get back home. Once there your family throw a small cerebrations, and pretty much everyone happy that you both made it home alive.[paragraph break]Author's note: It case you are wondering whatever happen to The Grue. Well through their mercenary they eventually make it enough money to return back to the Grue Home World, where he went on to philosophical treatise that no only change Grue philosophy, but the philosophy of all species, peoples, cultures and civilizations across the the local group. Even people as far as way as Andromeda sing it prasies. Further more still the Grues are big facts of the idea of a philosopher king, the fame of his work led him down the path of becoing the Emperor of the Grues. But, sadly his regin same to an unfortunate cut short after 8 years when he learn the hard want that even a Grue can eat to much. He was 124 Federation standard years old. Which is old even in Grue terms, just not that old.";
	
section - fix radio ending
	
switchesControlPanel is a truth state that varies.
switchesControlPanel is usually false.

hasExaminedPanel is a truth state that varies.
hasExaminedPanel is usually false.

Stealing parts is a scene.
Exploring Command Center is a scene. Exploring Command Center begins when the player is inside the fort command center. Exploring Command Center ends experimentally when switchesControlPanel is true. Exploring Command Center ends quickly when wiring-compartment is open. Exploring Command Center ends curiously when hasExaminedPanel is True.

When Exploring Command Center ends experimentally:
	say "Wait, what. This is the Controls for their Radio. [if Mabel is asleep]You look off to the side of the device and see that t[otherwise] [paragraph break]'Hey Mason look over here,' Mabel says to you pointing to the side of the control panel. You walk over next to her and see what she talkinng about. [end if]The panel covering the compartment for panel's wiring is loose and can be easy move to the side to get into it. Perhaps in there you can find some parts to used to fixed your pod's hyperspace radio and get in contact with the Federation.";
	now Did Mabel do something is true;
	
Bored Mabel is a scene. Bored Mabel begins when Boring Mabel > 7 and Mabel is in the fort command center and Exploring Command Center has not ended. Bored Mabel ends when Exploring Command Center ends.

when Bored Mabel Begins:
	say "Mabel looks at you can says, 'Okay, brother you are taking too long, why don't I do help you look for the parts. One of these computer thingy a bobbier have to be the control for their comms.'"
	
Mabel asking for knife is a scene. Mabel asking for knife begins when wiring-compartment is open and the location of Mabel is the fort command center and Mabel is awake and Mabel does not carry the multitool knife and Stealing parts has not ended.
Mabel asking for knife ends yesly when askingIsOver is true and Mabel holds the multitool knife.
Mabel asking for knife ends noly when askingIsOver is true and Mabel does not carry the multitool knife.

askingIsOver is a truth state that varies. askingISOver is usually false.

When Mabel asking for knife begins:
	if the player carries the multitool knife:
		say "You are geting out the mutitool knife to begin taking the parts out, when Mabel asks 'I can do it if you want?'";
		[now Did Mabel do something is true;]
		try mabel requesting the multitool knife;
		now askingIsOver is true;
	otherwise:
		say "Wait where is your knife?";

When Exploring Command Center ends quickly:
	say "After removing the loose panel protecting the wiring and other compotents of the Panel number 4 and see that varius parts you could used to fixed the Hyperspace radio of your escpace pod.";
	
When Exploring Command Center ends curiously:
	say "Hmmm. Maybe perhpas you can try open up it wiring compartment and see if there any part you can take to fixed the Pod's hyperspace radio.";

Stealing parts begins when Exploring Command Center ends.
Stealing parts begins when The Final Duel ends.
Stealing parts ends when the Player carries Hyperspace Radio Parts or Mabel carries Hyperspace Radio Parts.

When Stealing parts ends:
	if the player carries the hyperspace radio parts:
		say "You got the part you need to fixed the hyperspace radio. Now [if Mabel is awake]let's goes to the pod and fixed it[otherwise] once you resuce the Princess you can fix the pod's hyperspace radio[end if]. Then you can try getting in contact with the federation.";
	otherwise if Mabel is visible:
		say "Mabel grabs the hyperspace.";
	
Fixing the Radio is a Scene.
Fixing the Radio begins when Returning home ends victoriusly.
Fixing the Radio ends when Hyperspace Radio Parts are fixed in place;

When Fixing the Radio begins:
	if Mabel holds Hyperspace Radio Parts:
		say "Mabel looks over at you. 'You known borther you are looking pretty tired,' she says to you, 'how about I just go ahead and fixed them myself? I am the more of the tinkerer between the two of us after all.'[paragraph break]
You nod your head.[paragraph break]
'Do not worry, I will have it fixed in no time,' she says.[paragraph break]
You tell her if she need any help do not be afraid to ask. She tell already she knowns before she skips over to the escpace pod.";
	otherwise if ((the current hit points of the Player < 10) and ((the current hit points of Mabel > the current hit points of the Player) or (the current hit points of the Player < 5 and current hit points of Mabel > 10))) or Guard Fight has happened or Mabel asking for knife ended noly:
		say "Mabel looks over at you. 'You known borther you are looking pretty tired,' she says to you, 'how about I fixed the hyperspace comms? After all, I am much more skilled and expericeced in this area than you are.'";
		try Mabel requesting the hyperspace radio parts;
		say "You tell her if she need any help do not be afraid to ask. She tell she already knowns as she skips over to the escpace pod.";
	
carry out inserting hyperspace radio parts into Communications Housing:
	if Broken Parts are in Communications Housing:
		say "You they to take out the broken components first." instead;
		[say "You remove the old borkne pieces";
		try taking Broken Parts;]
	now Hyperspace Radio Parts are fixed in place;
	say "You put the new parts into the where they need to go. You hook up the wiring and screw them in. Now the you should be able to get in contact with the Federation. Just need to turn on Hyperspace communications.";
	
section - following ending

Encountering the Natives is a scene. Encountering the Natives begins when Returning home ends quitely;

When Encountering the Natives begins:
	say "You and Mabel has return to the crashsite. Just has you two decide to start making camp for the night you see lights not even a foot above the ground. At first you just assume that it just a herd of some bioluminescent oragnism traveling by, but then Mabel asks, 'Is that fire?' And indeed it is. The lights comes closers. It is not long before you can see that the light was being emited by little tiny torches carried little rodent like creatures. They look like something cross bewteen a raddit, a mouse and a squrriel, have possable thumbs and walk on thier hind legs. Along with torches they carrried spears, bows and arrows. The one artlice of clothing they appear to be wearing is pelts and leater wraped arround thier bodies and necklace hanging from thier neck. They seem to be in there viersion of the stone age. Galaxtic laws and treaty strictly limits contact with civilization do not have interstellar travel, even more so with ones that appear to barely invent, well anything beyond basic tools. Though by the look of it, you do not have a choice in the matter. One who must be their leader approuch to you and Mabel. He look you both up and down. He makes a series of noise that you are pretty sure was him saying something. Weither it was to the two of you or his friends you are not sure. Two more of them approch you, caring a fur blanket on which there is something round rolling apon as it is carried. They both look younger than most of the rest and you think one is female and the other is male, but to be honest you not even sure if correct in assuming the frist one is thier leader or a him or even anything. The 'young man' and 'lady' set down the blanket they are carring down in front of you. The Object that was carried with in it look exactly like an apple. The three look at you. The leader point his spear at you and speaks agian. It seem they are trying to tell you something, but you can not speak there lanugue and they surelly will not known any that you or your sister can. But you think they want you to take the 'apple'. You are not sure if you should, you do not want to break galatic law after all. Perhaps if you and Mabel enter the pod they will get the hint and leave after a while. But maybe you should take the apple. It probadly rude to refuse a it. Who knowns, they could consider it a great insult worse than any other. You ask Mabel what she thinks. She is not sure herself, but she makes it clear she in favor of taking it.";
	now the Natives are in Crashsite;
	Now the fur blanket is in the Crashsite;
	now the apple is on the fur blanket;
	
The Apple is a fallen fruit. The description of The Apple is "It look exactly like a bright red apple."

Fur blanket is a supporter. The description of The fur blanekt is "It looks like a blanket make out of the hide of a furrly animal. It not big enouch for you, but it the perfect side for two or three of these tiny creatures to snuggle up agiast eachother under."
	
Instead of taking Apple:
	now the player carries the Apple;
	if the player is in the crashsite, say "You pick up the apple. [one of]T[or]The leader seems to be telling the rest to calim down. Once again t[stopping]he one you bellive is a little girl make a gesture that appear to be a attempt to tell you to eat it.";
	stop the action;
	
tried taking Blanket is a truth state that varies. tried taking Blanket is usually false.

Instead of taking Apple:
	now the player carries the Apple;
	if the player is in the crashsite, say "You pick up the apple. [one of]T[or]The leader seems to be telling the rest to calim down. Once again t[stopping]he one you bellive is a little girl make a gesture that appear to be a attempt to tell you to eat it.";
	stop the action;
	
instead of taking the fur blanket:
	if tried taking Blanket is false:
		say "You try reaching down and taking the blanket, but the young local boy slap your wrist and scream something at you. You try not to luagh at him, but his message is clear";
		now tried taking Blanket is true;
	otherwise:
		say "They are not going to let anyone take it, they already made that clear.";
	stop the action;
	
instead of Mabel taking the fur blanket:
	 if tried taking Blanket is false:
		say "Mabel reachs down and attmept to take the blanket, but the young local boy slap her wrist and screams something her. You luagh. 'Ha ha very funny Mason,' Mabel quips.";
		now tried taking Blanket is true;
	otherwise:
		say "'Do you think I want my wrist slapped?' she asks you.";
	stop the action;
	
instead of eating the Apple:
	say "It tastes tastes sweet, sour and juicy; just like (a red veriosn of) an Arkonkian Smiths, expect it a bit sweeter. There also the fact it is red and not green. You offer Mabel a bit. As she take, you look at the crowds of funny looking rodent people and they seems to be happy about something. The leader walks to you and tuggs on your pant leg. He and the other seems to be trying to tell you and mabel to follow them. You are not sure if that is a good idea. You look other at Mabel. As she finish groging down the apple wile going, 'Mmmmm' she looks up at you and says, 'I think we should follow them, but if you want we can stay here. Whatever you want borhter, just tell me.'";
	now the Apple is nowhere;
	
Instead of giving the Apple to Mabel:
	say "You hand the apple over to Mabel. She takes a bit out of it and seems to fall in love with it instantly. She offer you a bit. You take it. It tastes sweet, sour and juicy;  just like (a red veriosn of) an Arkonkian Smiths, but a bit sweeter. As you hand the rest to her you find the leader tugging on your pant leg. He and the other appear to want you guys to follow them. You are not sure if that is a good idea. You look other at Mabel. As she finish groging down the apple and going, 'Mmmmm' the whole time she looks up at you and says, 'I think we should follow them, or we stay here if you want. Whatever you want borhter, just tell me.'";
	now the Apple is nowhere;
	
Report dropping the Apple:
	if the player is in the crashsite:
		say "You drop the Apple on to the ground. The band of privite rodent people seem to be insult and are yelling at you. Mabel turn to you and says, 'I think you should probadly pick it back up'" instead;
	otherwise:
		continue the action;
	
Follow the Natives is a scene. Follow the Natives begins when the Apple is nowhere AND Encountering the Natives is happening. 
Follow the Natives ends when Encountering the Natives ends.

When Follow the Natives begins:
	Now turnsInPod is -2;
	
Instead of going north from crashsite when Encountering the Natives is happening:
	say "The Native are blocking your way.";

When Encountering the Natives ends with following:
	say "As You and Mabel follow the Navites, neither of you where sure of where they are taking you and the only lights where that of the two moons, the stars and the flaming light of the torches. After an half an hour or some, you spot what is unmistakely a camp fire and two crashed espace federation pods. Truns out the you wer enot the only surivior after all and appearly both them and the natives have correctly assume that you and them are together. Well, You all are human, so I guess it not much a assumustion. Though many scinceist consider Arkonkians to be there owm seperate subspceies. But then agian these humans are a very devrse bunch. From dark skin with fiery red hair to fiar skin with black hair to brown with naruaraly blue hair and everything inbetween But then agian, for all they known you and the other surior could not like eachother. [paragraph break]Anyway you guys tell the rodent thing thank you and I think they reply with their veriosn of 'Your welcome' and they left. We spent the rest of the night with the other suriover in their camp and in the Morrying the federation have come to recuse us. A federation Space Force patrol squadron lands right nexts to the camp. A Space Force portol officer walks down the ramp. You all welocme her and her portol member to to your camp. After spenting so time talking the other board the spaceships, but you and your sister tell the officer about the holdout and their fort. Her and her men tell you that the federation and the consortium will work together to finger out what to do with with them. with that, [EndText]";
	end the story saying "Thank you for play testing the game.".
	
When Encountering the Natives ends with staying:
	say "Seeing that you and Mabel have decide to go into the pod instead of following them, the Locals give up on whatever they were tring to co you. After wacthing them leave, Mabel go fecths two sleeping bags, one for her and one for you. You both are pretty tired, so it is not longer ebfore you two fall asleep. You are awak to the first light of the planet's rising star and the the sound of spaceship zipping through the atomoshpere. You look over at Mabel's sleeping bag and find that she has already woken up. You get up and see that she is standing outside the pod's airlock. You see Federation Troop transport ship landing on top of the dunes to your right. You and Mabel climb up the dunes and are greeted by a five members of space force portol including an officer as they walk down the ramp of the ship. After the army platoon that they brough with them march down the ramp and heads towards the fort, [EndText]";
	end the story saying "Thank you for play testing the game.".
	
When Encountering the Natives ends with shooting:
	say "You and Mabel finger out how to locked the airlock and close it tighted. You never known if the Native will come back. You quickly fall asleep. You are both awaken to the sound of a ship landing nearby. You both head out side to see Federation Troop transport ship landing on top of the dunes to your right. You and Mabel climb them and greeted by a five members of space force portol including an officer as they walk down the ramp of the ship. After the army platoon that they brough with them march down the same ramp and towards the fort, [EndText]";
	end the story saying "Thank you for play testing the game.".
	
turnsInPod is a number that varies. turnsInPod is 0.

Every Turn when the location of the player is Pod Interor:
	increment turnsInPod;
	
After going a direction when room gone from is Pod Interor:
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
	now the hawks are nowhere

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
	say "The guard snarls in pain. He look over at you and perpares to fight.";

Every turn during Guard Fight:
	if a random chance of 1 in 3 succeeds and hasAttack of Avisurite Guard is false:
		try Avisurite Guard attacking the Player;
	if the location of Avisurite Guard is not the location of the player and Avisurite Guard is undefeated:
		let the way be the best route from the location of Avisurite Guard to the location of the player, using doors;
		try Avisurite Guard going the way;

[When Guard Fight ends:
	if the Player is in Atrium:
		say "The guard collapses to the ground. As you stand trumpihly you look around and see that the rest of the Holdout has been wacthig you the whole time. They quickly Strom you, and the next thing you known you are strieped of everything but your uniform and your the family picture and locke dup with the Princess. [paragraph break] Once holdout soilders leave she sats by from her bed and luaghs at you asking, 'Please at least tell em there are more on the way.'[paragraph break]
You tell her, 'The fleet I came with was attacked by pirates. I known other had made to escapse pods. I am sure many of them made it, but after my my pod crash I am the only one to survivie.'[paragraph break]She luaghs at you agian, 'Well you sure have messed up big this time brother, but at least we are here together.'[paragraph break]'There always a bright side to every thing isn't there, Mabel?' you reply.";
		end the story saying "Do not worry the Consortium will show up to deal with this rebeling holdout themselves, maybe.";]
		
The final duel is a scene. The final duel begins when Mabel is in the Atrium for the first time and Mabel is awake. The final duel ends when Holdout Leader is defeated and Avisurite Guard is defeated and Avisurite Soilder is defeated;

When the final duel begins:
	now the western door is open;
	say "You and Mabel enter the Atrium and see a female Avisurite wearing a Consortium Officer uniform standing in the middle of the room. She looks at both of you and Tweets, Chirps, Barks and Growls 'How? How did you make it pass the Grue. They are like my one underling that actually manange to pull thier wieght around here and you, known what it does matter.' She then turn to her soidlers and Hissses 'Attack.'";
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
	if the location of Holdout Leader is not the location of the player and Holdout Leader is undefeated:
		let the way be the best route from the location of Holdout Leader to the location of the player, using doors;
		try Holdout Leader going the way;
	if the location of Avisurite Soilder is not the location of the player and Avisurite Soilder is undefeated:
		let the way be the best route from the location of Avisurite Soilder to the location of the player, using doors;
		try Avisurite Soilder going the way;
	if the location of Avisurite Guard is not the location of Mabel and Avisurite Guard is undefeated:
		let the way be the best route from the location of Avisurite Guard to the location of the mabel, using doors;
		try Avisurite Guard going the way;
	repeat with Enemy running through Avisurites in the location of the Player:
		let the gun be a random plasma blaster carried by Enemy;
		if the gun is not nothing:
			if the hasAttack of Enemy is false:
				if a random chance of 3 in 5 succeeds:
					if a random chance of 1 in 2 succeeds:
						try Enemy shooting the player with the gun;
					otherwise:
						try Enemy shooting Mabel with the gun;
				otherwise if a random chance of 2 in 5 succeeds:
					if a random chance of 1 in 2 succeeds:
						try Enemy attacking the player;
					otherwise:
						try Enemy attacking Mabel;
				otherwise if a random chance of 3 in 5 succeeds and enemy is Avisurite Guard:
					try Avisurite Guard attacking the Player;
		otherwise:
			if a random chance of 1 in 35 succeeds:
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
	unless Player carries hyperspace radio parts:
		say "Mabel turn to you and asks, 'Didn't you say that the pod's Hyperspace radio is broken?'[paragraph break]You nod your head.[paragraph break]'[if Exploring Command Center has not happened]They probably have part to fix it in their command center. I belive it is in the western tower somewhere,'she says.[paragraph break] [otherwise if Exploring Command Center is happening and the location of the Player is not the fort command center]They might have something in the command center to fixed it,' she says.[paragraph break][otherwise]I think we should look around for parts,' she says.[paragraph break] The holographic display did seems to something about a hyperspace radio.[end if]You take sometime to think before coming to your decision.";


 


