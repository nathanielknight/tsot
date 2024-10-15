#set page(
  margin: 6mm,
  paper: "us-letter",
)

#set text(
  font: "Vollkorn"
)

#let cards = cs => {
  grid(
    rows: (88.9mm, 88.9mm, 88.9mm),
    columns: (62.5mm, 62.5mm, 62.5mm),
    stroke: 1mm + gray,
    ..cs,
  )  
}


#let card = (title, body) => {
  block(inset: 4mm, [
    = #text(font: "Futura", size: 12pt, title)
    #set text(size: 9pt)
    #v(1em)
    #body
  ])
}

#let threat_card = (title, body) => {
  block(inset: 4mm, [
    = #box(fill: black, inset: 1mm, text(font: "Futura", size: 12pt, fill: white, title))
    #set text(size: 9pt)
    #v(1em)
    #body
  ])
}


// -----------------------------------------------------------------------
// Prelude (up to 2 cards each)

#let introduce_yourself = card("Introduce Yourself", [
  *Who will you be playing?*

  Introduce your character. Give their:

  - Name
  - Look
  - Role on the Mission
  - Trait (pick from *Character Elements* or make up your own)

  How is this communicated to the audience?
])


#let prelude_cards = (
  card("Introduce the Crew", [
    *What kind of crew are the characters in?*

    Choose a concept and a trait *Crew Elements*, or make up your own.

    How are the crew's specialties, dymaics, and general vibe communicated to the audience?
  ]),
  card("Introduce the Mission", [
    *What kind of mission are the characters on?*
    
    Choose a concept and a trait from *Mission Elements*, or make up your own. 
    
    How are the missions objectives and stakes communicated to the audience?
  ]),
  card("Introduce the Setting", [
    *Where is the mission taking place?*

    Choose a place and a trait from *Setting Elements*, or make up your own. 
    
    How is are the setting and its challenges communicated to the audience?
  ]),
  card("Extra Colour",[
    _4+ Players Only_

    Add an extra trait to the *Crew*, *Mission*, or *Setting*, choosing from the *Elements*  or making up your own.

    How is this additional detail communicated to the audience?
  ]),
  introduce_yourself,
  introduce_yourself,
  introduce_yourself,
  introduce_yourself,
  introduce_yourself,
)


// -----------------------------------------------------------------------
// Encounter (2-4 cards each, 6-20 cards total)

#let kbtt = card("Killed by the Threat", [
  Your character is killed by the Threat. How does it get you?

  Discard your hand and draw 3 cards from the Threat deck.
])


// TODO: which cards trigger the struggle?
#let encounter_cards = (
  kbtt,
  kbtt,
  kbtt,
  kbtt,
  kbtt,
  card("Contingency plans", [
    The crew makes backup plans, deploys equipment, or otherwise prepares for when things start to go wrong.

    _Place this card face up in front of you. You may discard it at some point TODO: to what end?_
    ]),
  card("Ominous details", [
    As the crew pursues their mission the threat grows.

    What does the audience see?

    Do the crew see it too?
  ]),
  card("What are we waiting for?", [
    Make a bold, possibly foolish move.

    What made your character act so rashly?

    How did it turn out for them?
  ]),
  card("Work the problem", [
    Show your character working to overcome an obstacle or solve a mystery.

    How do they feel about it? Excited? Nervous? Annoyed?

    How does the crew feel about it? Inerested? Suspicious? Confident?
  ]),
  card("This is mine", [
    Show the crew taking something they probably shouldn't.

    What are they taking?

    How does the audience know it's a bad idea?
  ]),
  card("Anything I can do?", [
    // NOTE: could remove
    You help with something outside your usual duties.

    How does it go? Are you a fifth wheel? Are you stepping on anyone's toes? Do you earn a little bit of extra respect?
  ]),
  card("Perhaps the real monster is...", [
    Secretly betray the crew for personal gain.

    What's in it for you?

    Do you get caught?

    _Play this card only if all players consent._
  ]),
  card("It worked!", [
    Your character makes a major breakthrough.

    What did you figure out, discover, or realize?
  ]),
  card("Disappear", [
    You disappear, fate unknown.

    What circumstances surround your disappearance?

    _Put this card in front of you. Instead of playing a card you may discard it to re-appear. What happened to you?_
  ]),
  card("Look on my works", [
    Show off the scale, scope, sophistication, or other achievement associated with the mission.

    How could it all go wrong?
  ]),
  card("Quick Exposition", [
    Explain a detail about the mission or the crew: a neat piece of equipment, why the environment is challenging, how the crew's corporate employer never pays for propper maintenance, etc.

    _If you like, add a Tag to the Crew, Mission, or Setting._
  ]),
  card("Quit your whining", [
    Somebody is complaining about their situation. Who?

    Somebody tells them to stop. Who? Is their tone supportive? Serious? Dismissive? Annoyed?
  ]),
  card("I'll keep this brief", [
    The Crew is given additional briefing on their Mission, explaining the immediate obstacles or objectives.
  ]),
  card("By the numbers", [
    The crew's mission proceeds easily. Perhaps too easily...

    Does the camera foreshadow future problems, or is there something else keeping us entertained?
  ]),
  card("I don't pay you to think", [
    A character has reasonable questions about the feasbility or safety of the mission. Who?

    They're overruled; by who? On what authority? Rank? Charm? Threats of violence?
  ]),
  card("This doesn't bode well", [
    Something foreshadows the threat.

    How does the camera hint at future badness?

    Is the crew aware? How do they react? Excitement? Resolve? Trepidation?
  ]),
  card("I'm not here to make friends", [
    // NOTE: could remove
    A character delivers a harsh order, forcefully overrides an objection, or otherwise acts like a jerk. Who?

    How does the rest of the crew react?
  ]),
  card("Nothing is sacred", [
    Someone on the crew takes, destroys, or otherwise ruins something ancient and/or precious. 

    How does the rest of the crew react?

    How does the camera show the gravity of what they've done?
  ]),
  card("Not today!", [
    Things start to go wrong, but swift, skillful action from the crew prevents disaster.

    Who is in danger? Who rescues the situation?  

    The danger doesn't have to be related to the threat.
  ]),
  card("I've never seen THAT before", [
    The crew encounter a phenomenon, sensor reading, structure, etc. that shouldn't be possible.

    What do they encounter?

    How do they react?
  ]),
  card("We're gonna be here for a while...", [
    Due to a storm, orbital alignment, important repair, etc. the crew is stuck where they are for a while.

    How is this communicated to the audience?

    What's the timeline for them to get out?
  ]),
  card("We can't turn back now", [
    The crew must press on, even if the way forward looks grim.

    Why?    

    Does anyone want to turn back or give up?

    Who insists on going forwards?
  ]),
  card("Nothing ever happens", [
    Somebody complains that their job is boring.

    What are they doing to try to have fun?
  ]),
  card("I'm going alone", [
    Strike out on your own.

    Where are you going? To do what?

    Why did you go alone? To prove something? To protect someone?
  ]),
  card("We can't leave without...",[
    You could leave now, but you insist on doing something first.

    What is it? Do you need to retrieve something or someone? Get a sample, a recording, a payday, revenge?

    What danger do you put yourself in to get it?
  ]),
  card("What happened here?", [
    The crew stumbles upon an eerie situation or the aftermath of some grim calamity.

    Relate the story of what happened.

    How do your characters know what took place?
    Do they find a recording?
    Have a vision?
    Use forensic know-how?
  ]),
)


// -----------------------------------------------------------------------
// Struggle

// have a quiet conversation
// lay out the tension/conflict
// fight against the threat
// work towards escape
// make a grim discovery
// 

// TODO: about 12 of these
#let crew_struggle_cards = (
  card("foo", [#lorem(18)]),
)


/* Threat cards: (are these for the encounter and the strugle)

Actions:
- scry (mess with the crew)
- put a card on top of the deck
- mark calamity (for secret machination)
- roll for calamity (for confrontation with the crew)
- let the heroes choose a card to discard
- conditions for encounter vs struggle (e.g. "re-roll one die, if they've already rolled mark a calamity")
*/


// TODO: 16-20 of these
#let threat_cards = (
  threat_card("Foo", lorem(12)),
)

// -----------------------------------------------------------------------
// Synthesis!
#cards(
  prelude_cards +
  encounter_cards +
  crew_struggle_cards +
  threat_cards
)
  
