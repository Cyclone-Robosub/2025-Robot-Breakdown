#let poster(
  title: "Autonomous Underwater Vehicle", 
  leadership: json("data/leaders.json").map(it => [#it.name]),
  advisors: json("data/advisors.json").map(it => [#it.name]), 
  members: json("data/members.json").map(it => [#it.name]), 
  date: datetime.today().display("[month repr:long] [day], [year]"),
  // split: (1fr, 1fr, 1fr),
  split: (13.5in, 1fr, 13.5in),
  print-margin: .5in,
  colors: (rgb("01696cff"), rgb("02979dff"), rgb("48b0b3ff"))
) = {

  set document(author: "Cyclone RoboSub @ UC Davis", title: title)
  
  set page(
    paper: "us-letter", 
    height: auto,
    margin: (bottom: 1.2in, top: 1in, rest: .75in),
    background: align(bottom, image("background.svg", width: 101%)),
    header: context{
      set text(weight: "light", .8em)
      // datetime.today().display("[month]/[day]/[year]")
      date
      h(1fr)
      counter(page).display("1")
    },
    footer: {
      set text(white, .8em, )
      set par(justify: false)
      align(right, block(width: 1.20in, align(right, [Cyclone Robo Sub \@ UC Davis])))
      place(bottom + right, 
        dx: .6in, 
        dy: -.3in, 
        image("design\propeller.svg", width: .4in)
      )
    },
    footer-descent: 43%,
    header-ascent: 48%,
    
  )

  set text(
    font: "Montserrat", 
    lang: "en", 
    12pt
  )

  set par(
    justify: true,
    leading: .6em,
    spacing: 1.2em,
  )

  show image: it => box(
    it, 
    radius: 5pt, 
    clip: true
  )
  
  
  set grid(
    gutter: .1in
  )
  
  set heading(numbering: none)
  show heading: set text(
    colors.at(0),
    font: "Prompt",
    weight: "semibold",
  )
  
  show heading.where(level: 1): it => {
    set par(leading: .5em)
    set text(1.75em, weight: "semibold")
    v(-.5em)
    block(it.body)
  }
  
  show heading.where(level: 2): it => {
    set text(1.5em, weight: "bold", tracking: 1.5pt)
     v(.5em)
    block(upper(it.body))
  }

  show figure.caption: it => {
    v(-.15em)
    text(
      .7em, 
      fill: luma(30%),
      it
    ) 
  } 

  // place(
  //   top + right, 
  //   // dx: 1.5em,
  //   dy: -1.25em, 
  //   text(
  //     fill: luma(40%),
  //     weight: 700, 
  //     [Station 173]
  //   )
  // ) 

  // place(
  //   bottom + right,
  //   image("design/propeller.svg")
  // )
    text(2.5em, font: "Prompt", weight: "bold", fill: colors.at(0), title)

  // grid(
  //   columns: (auto, 1fr, auto), 
  //   gutter: 1in, 
  //   align: bottom + center, 
  //   image("design/COE_logo_color_cmyk.svg", height: 1.15in),
  //   text(3.5em, font: "Prompt", weight: "bold", fill: colors.at(0), title),
  //   image("design/Full Title.svg", height: 1.15in),
  // )

  v(-2.3em)
  line(length: 100%, stroke: 1pt + colors.at(0))
  v(-.2em)
  
  let list(list) = {
    for l in list {
      l + if l != list.last() [, ]
    }
  }

  align(
    center, 
    stack(
      spacing: .7em,
      [*Leadership:* #list(leadership)],
      [*Advisors:* #list(advisors)],
    )
  )
  // v(.9em)
  
  // Body
  // grid(
    // columns: split, 
    // column-gutter: 2%,
    // stroke: (x, y) => 
    //   if x == 1 or x == 2 {colors.at(2)},
    include "column-left.typ"
    pagebreak()
    // grid.vline(position: start),
    include "column-middle.typ"
    pagebreak()
    include "column-right.typ"

  // )  
}

#poster()

