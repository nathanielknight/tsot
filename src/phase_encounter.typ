#import("utils_phase.typst")
#import("util.typst")
#import("theme.typst")

#show: theme.common
#show: theme.phase

#utils_phase.title("The Encounter")

#let tension_roll(players, tension) = {
  let penalty = calc.round(calc.sqrt(tension * 2))
  if penalty == 0 [
    #(players)d6
  ] else [
    #(players + penalty)d6
  ]
}

= Instructions

In this phase you'll start to encounter the threat.

- Roll a pool of dice (one per player plus one)
- On your turn:
  + Choose a die from the pool
  + Make a corresponding move from your Playbook as this sheet (as in the Prelude)
- 
- A move will tell you when to advance to the Struggle
- Once everyone has made a move, re-roll the (possibly modified) dice pool

= Moves

TODO

= Tension

