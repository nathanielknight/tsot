#set page(
  margin: 8mm,
  paper: "us-letter",
)

#set text(
  font: "Vollkorn"
)

#show heading:  it => text(font: "National Park", size: 13pt, it)

#let cards = cs => {
  grid(
    rows: ( 87mm, 87mm, 87mm),
    columns: (62mm, 62mm, 62mm),
    stroke: 1mm + gray,
    ..cs,
  )  
}


#let card = (title, body) => {

  block(inset: 8mm, [
    #set text(size: 10pt)
    = #title  

    #v(1em)

    #body
  ])
}

#let multicard = (n, title, body) => {
  range(n).map(_ => card(title, body))
}

#let escape = text(font: "Vollkorn SC", [Escape])


// -----------------------------------------------------------------------
// Prelude (2 cards each)

#let introduce_yourself = card("Introduce Yourself", [
  *Who will you be playing?*

  Introduce your character. Give their:

  - Name
  - Look
  - Role on the Mission
  - Trait (pick from the Character Elements sheet or make up your own)

  How is this communicated to the audience?
])


#let prelude_cards = (
  card("Introduce the Crew", [
    *What kind of crew are the characters in?*

    Choose a concept and trait from the Crew Elements sheet, or make up your own.

    How are the crew's specialties, dymaics, and general vibe communicated to the audience?
  ]),
  card("Introduce the Mission", [
    *What kind of mission are the characters on?*
    
    Choose a concept and a trait from the Mission Elements sheet, or make up your own. 
    
    How are the missions objectives and stakes communicated to the audience?
  ]),
  card("Introduce the Setting", [
    *Where is the mission taking place?*

    Choose a place and a trait from the Mission Elements sheet, or make up your own. 
    
    How is are the setting and its challenges communicated to the audience?
  ]),
  card("Extra Colour",[
    _4+ Players Only_

    Add an extra trait to the Crew, Mission, or Setting, choosing from the Elements sheets or making up your own.

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
  Your character is killed by the threat. How does it get you?

  Discard your hand and draw 3 cards from the Threat deck.
])


// TODO: Zealot cards (mark with a special symbol).

// TODO: which cards trigger the struggle?
#let encounter_cards = (
  kbtt,
  kbtt,
  kbtt,
  kbtt,
  kbtt,
  card("Contingency plans", [
    Show the crew making backup plans, deploying emergency equipment, or otherwise being prepared for when things start to go wrong.

    Place this card face up in front of you.

    You may discard it at any time to add +1d6 to an #escape roll during the Struggle phase.
  ]),
  card("Ominous details", [
    As the crew pursues their mission the threat grows.

    What does the audience see?

    Do the crew see it too?

    
  ])
)
  

/*
Crew cards:

unwelcome discovery
foreshadowing


Threat cards:

attack the crew (scry 2 for the crewmember)
machinations (trigger progress at the start of the struggle, or bonus to first roll?)

*/


// -----------------------------------------------------------------------
// Struggle

#let struggle_cards = ()
  

// -----------------------------------------------------------------------
// Synthesis!
#cards(
  //prelude_cards +
  encounter_cards
)
  
