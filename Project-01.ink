/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

It's a lovely, warm, summer day. One you should be enjoying with your friends, trying out new spells, playing a couple of harmless pranks, grabbing a nice meal. But no. Someone had to go and snitch to the professor that it had been your doing and your idea to switch a couple components in the potion room. In your defense you hadn't meant for it to be that large of an explosion, but alas, you were stuck here doing "community service" and being a "functioning memeber of society" whatever that meant. Looking at the list the options didn't seem all that exciting, but not all that torturous either. 
* [Thyme's Trinkets] -> Thymes
* [Tomcat Tavern] -> Tomcat_Tav

== list ==
Here you hold your trusty list of duties
+ [Thyme's Trinkets] -> Thymes
+ [Tomcat Tavern] -> Tomcat_Tav


== Tomcat_Tav ==
You notice a small pile of coins next to a couple of scattered books on the shelf. 
* [take the coins] -> coin_taken
+ [ignore the coins] -> no_coin

== coin_taken ==
You've obtained a handful of coins! Incredibly useful for buying goods and services! 
* [continue the job] -> continue_tav

== no_coin ==
You choose to ignore the coin, in the spirit of doing good and sticking to your work. 
+ [ continue the job] -> continue_tav

== continue_tav ==
Looking around the tavern you notice a very stressed out looking woman behind the counter. You'd recognize her as Vasira, the owner and bartender of the tavern. It's odd to see the woman so frazzled as she's usually one of the calmer people in town. 
+ [what's wrong?] -> question_v
+ [Hey, I was sent to do something for you, but I'm not too sure what.] -> question_v
+ [check for a different job] -> list

== question_v ==
"My cat, THE cat of the tavern Rupert has been missing, and I've been looking everywhere for him. He just won't turn up and I still have to keep watching over the tavern, so it'd be a great service if you could find him. He usually likes resting in sunny spots or places he can easily hide in." 
+ [Finding a cat shouldn't be too difficult] -> begin_search
+ [Check for a different job] -> list

== begin_search ==
Looking around the tavern you try to think of the best place to begin. Sunlight streaks through all of the large windows lining most of the walls of the establishmet, leading your eye to a door at the back of the hall with a pale light filtering in from beneath the door. 
* [check behind the door] -> behind_door
* [keep checking in here ] -> main_area

== behind_door ==
The back door is easy enough to push open, and you notice it seems to be a storage room with barrels of ales and wines lifted slightly off the ground. Perfect hiding spots for a cat. You also notice at the top of the shelf there seems to be a large window letting in a wide ray of warm light, but there doesn't seem to be any space for Rupert to be laying that high up. 
* [ check beneath the barrels ] -> check_barrels 
+ [leave room] -> main_area

== check_barrels ==
Looking under the barrels you primarily find dust bunnies that you mistake for a cat for about 2 seconds. You get up dusting yourself off, and continue the search. 
+ [keep looking else where] -> main_area

== main_area ==
{behind_door: As you exit the door, you notice Vasira motioning for you to come towards her. As you move closer she pushes a small packet towards you. "These are some of his favorite treats. Sometimes he likes to go exploring outside near the tavern and these are the best way to get him to venture out of one of his hiding spots."} Vasira leans over the counter pointing towards the main door where patrons enter and exit. Out near the front of the enterance he sometimes likes to explore, that should be a good starting point for finding him.  
* {behind_door} [take the treats] -> treats
+ [head towards the primary door] -> outside
+ [keep trying inside] -> behind_door

== treats ==
You now have a bag of treats! These should speed up the process! 
* [continue outside] -> outside

== outside ==
Standing outside the door you notice a couple planters which seemed to be played in and walked through by a small animal, the scraps Vasira mentioned, as well as a half full bird bath. 
* {treats} [you shake the treat bag] -> Rupert_comes_out
* [check the planters] -> planters
* [check the bird bath] -> bath
* [check the scraps ] -> scraps 

== planters == 
Taking a closer look at the planters, you notice a mix of trampled flowers and soil scattered around the base. Small pawprint like tracks lead away from the planters, and begin to dissapear near the side  of the tavern, towards the scrap pile.
+ [keep looking] -> outside

== bath ==
Looking at the birdbath, it's no wonder that it's half full as a trail of water that's yet to dry leads to a pile of scrap wood and bricks at the side of the building. 
+ [keep looking] -> outside

== scraps ==
{planters: Following the dirt trail} {bath: Following the water trail} you notice some movement inside the pile of scraps at the side of the building. Pices of wood shifting as you see a tuft of pale orange fur peeking out.
+ [move forward] -> find_rupert

== find_rupert ==
Moving closer to the scrap pile, moving pieces of wood you see an orange tabby cat, who you know to be Rupert yawning as he looks up at you.
+ [open up a space for Rupert to crawl out] -> reunion

== Rupert_comes_out ==
Shaking the treat bag, you see movement from the pile of scrap wood and bricks near the side of the tavern, and sure enough a pale orange tabby cat struts out brushing himself up against your shin. 
+ [lead Rupert back inside] -> reunion

== reunion ==
Upon opening the door, Vasira first notices you, but her face lights up as she notices the small creature following closesly at your feet. Nearly jumping the bartop counter you see owner and pet reunite. 
"Thank you so much for helping to find him. With how busy it gets in here sometimes he just wanders off and I can't help but worry! I'll make sure to inform the professor of what a fantastic help you've been to me!" 
-> END


== Thymes == 
You decide to head to the local pawn shop, Thyme's Trinkets. The owner is a fairly eccentric young woman with goat like legs and horns and a pension for collecting. 
As you walk up to the front desk you notice that no one seems to be working, but you do notice a simple silver bell. 
+ [press the bell] -> bell_press
+ [wait it out] -> wait

== bell_press ==
You give the bell a press and it rings out in a clear silver tone, but no one seems to show. 
+ [press it again] -> ow
* [wait it out] -> wait


== ow ==
As you press the bell again you feel a sharp pain in the back of your skull.
 "Patience is is a virtue sugar." Rings our in mind, as Thyme walks around the corrner a thin lined smile across her face. 
* [continue on] -> unerving

== wait == 
A few moments pass and you begin to think that you were sent on a wild goose chase to pay for your crimes, until you hear the tell tale hoof steps of Thyme clopping up to you. 
"hope you weren't waitin' too long! You're the troublemaker Pathew sent right?" 
+ [In the flesh] -> help_thyme
+ [yeah] -> help_thyme
+ [just lookin around] -> purchase

==unerving==
Walking over to the front counter, the shiny bell mocks you as Thyme leans onto the counter before you, her hands placed under her chin. "Now, are you here for any useful reason, or just to pester me?" 
+ [I was sent by professor Pathew to help you] -> help_thyme
+ [I'm just here to look around] -> purchase

== purchase ==
In that case, feel free to take a look around. Anything can be traded for the right price. 
* {coin_taken} [A sparkling purple gemstone] -> bought_gem
* {coin_taken} [An antique mirror with odd engravings] -> bought_mirror
+ [Nothing catches your eye] -> list

== bought_gem ==
"Ah a lovely stone! I'm still not quite sure what it does myself so I'm not too concerned with keeping it. What you have there should cover it." 
+ [purchase the stone] -> stone_obtained
* [don't purchase the stone] -> list

== bought_mirror ==
"That's an old mirror a Frida helped me find at and estate sale a few towns over. The house was big and old as all hell, could be haunted if you're into that spooky stuff" 
+ [purchase the mirror] -> mirror_obtained
* [don't purchase the mirror] -> list

== stone_obtained ==
You now have a swirling purple stone! If you took it to Professor Pathew he may know what it does! Though that may have to wait till tomorrow.
* [check jobs] -> list
* [work job ] -> help_thyme

== mirror_obtained ==
You now have a creepy ornate mirror! If you took it to Professor Pathew he may know what it does! Though that may have to wait till tomorrow.
* [check jobs] -> list
* [work job ] -> help_thyme

== help_thyme ==
Now that you've agreed to help her, Thyme seems to be in even better spirits. She leads you to the back of the shop where you see {& piles upon piles of different colored stones | different shaped bottles with swirling multicolored liquid inside | old dusty tomes of varying sizes } . 
"I'm gonna need you to sort these {& stones | bottles | books } based on similarities on those shelves over there. It shouldn't be too difficult, just take awhile." 
+ [begin sorting ] -> sorting
+ [maybe another job is more suited for you] -> list 

== sorting ==
You begin your monotonos work sorting {& stones | bottles | books}, and by the time you get into a groove it becomes nearly theraputic. Soon enough you're done with your sorting. 
* [call in Thyme ] -> come_to_u
* [run to the front to grab Thyme] -> go_to_her

==come_to_u ==
"Just a moment darlin'" 
* [wait for her] -> arrive
* [run to the front to grab Thyme] -> go_to_her

== go_to_her ==
Walking out of the storage room you notice Thyme speaking to someone at the front counter. Upon closer inspection you see your mentor professor Pathew, who quickly notices you. { mirror_obtained: "What's that you got there? That looks incredibly old!" } {stone_obtained: "And What an odd looking stone! We should be sure to check that out at the lab another day"}. Looking over your shoulder and into your work in the back room, "It seems you've learned your lesson about messing with organizing systems?" he says with a kind smile on his face. 
-> END

== arrive ==
{ow: "It seems you've learned your lesson in regards to patience." she says, a much kinder smile on her face than when you'd previously seen it.} Looking around the room she takes your work in smile still plastered on her face. "A wonderful job you've done here! I'll be sure to inform Pathew of your work here today!" 
With that promise, you know you're free from your community service, at least until you get into something else. 
-> END


