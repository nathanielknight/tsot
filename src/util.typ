#let dicier(t) = {
  text(font: "Dicier Round", size: 8pt)[#t]
}

#let checkbox = {
  box(width: 2.5mm, height: 2.5mm, stroke: 0.15mm + black, [])
}


#let checklist(content) = [
  #set list(marker: checkbox)
  #content
]

