#import("util.typst")

#set text(font: "Fantasque Sans Mono")

#let inset = 9pt

#let text_np = t => text(font: "National Park", t)
#let inline_header = hdr => text(font: "National Park", weight: "bold", hdr)

#let name(nm) = {
  block(
    above: 0%,
    below: 8mm,
    smallcaps(text(font: "National Park", size: 8mm, weight: "bold")[#nm])
  )
}

#let pitch(body) = {
  text(size: 9pt, style: "italic", body)
}

#let nameAndTraits(directives) = {
  grid(
    columns: (1fr, 3fr),
    rows: auto,
    inset: inset,
    stroke: 0.14mm + black,
    grid.cell(rowspan: 2,
      [
        #inline_header("Directives")
        #directives
      ]
    ),
    inline_header("Name"),
    inline_header("Traits"),
  )
}

#let moves(prelude: [], encounter: [], struggle: []) = [
  #set text(size: 10pt)
  #set par(linebreaks: "optimized")

  #grid(
    columns: (2fr, 2fr, 2fr, 2fr),
    rows: auto,
    inset: inset,
    stroke: 0.14mm + gray,
    [],
    grid.cell(colspan: 3, inline_header("Moves")),
    // Prelude
    [
      #inline_header("Prelude")

      - Choose and make moves until you have none left, or until it makes sense to move to the Encounter Phase.
    ],
    grid.cell(
      colspan: 3, 
      util.checklist(prelude)
    ),
    // Encounter
    grid.cell(rowspan: 2)[
      #inline_header("Encounter")
      - Roll the crew's dice pool, reduced by Tension.
      - For negative dice, roll extra and take lowest.
      - Each player takes one die and makes a move based on its value.
      
    ],
    [#util.dicier[1 2 3]],
    [#util.dicier[4 5]],
    [#util.dicier[6]],
    util.checklist(encounter.miss),
    util.checklist(encounter.partial),
    util.checklist(encounter.hit),
    // Struggle
    [#inline_header("Struggle")
    
    When rolling Escape or Calamity, fill
    - 1 on #util.dicier[1 2 3]
    - 2 on #util.dicier[4 5]
    - 3 on #util.dicier[6]
    - 5 on #util.dicier[6 6]
    ],
    grid.cell(colspan: 3, util.checklist(struggle))
    )
]


#let development(milestones) = align(bottom)[
  #rect(
    width: 100%,
    stroke: 0.14mm + black,
    inset: 7pt,
  )[
  When your scene does one of the following, cross it off.

  #milestones

  When you've crossed off at least three items, you may alter or remove one of your Directives.
  ]
]
