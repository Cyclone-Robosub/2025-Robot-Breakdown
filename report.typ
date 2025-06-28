#let report(
  title: "2025 Vehicle - Manny the Manatee", 
  leadership: json("data/leaders.json").map(it => [#it.name]),
  advisors: json("data/advisors.json").map(it => [#it.name]), 
  members: json("data/members.json").map(it => [#it.name]), 
  date: datetime.today().display("[month repr:long] [day], [year]"),
  // split: (1fr, 1fr, 1fr),
  split: (13.5in, 1fr, 13.5in),
  print-margin: .5in,
  colors: (rgb("01696cff"), rgb("02979dff"), rgb("48b0b3ff"), luma(30%) )
) = {

  set document(author: "Cyclone RoboSub @ UC Davis", title: title)
  
  set page(
    paper: "us-letter", 
    height: auto,
    margin: (
      // bottom: 1.2in, 
      // top: 1in, 
      rest: .75in),
    // background: align(bottom, image("branding/background.svg", width: 101%)),
    header-ascent: 40%,
    header: context{
      set text(weight: "light", .8em)
      set align(right)
      // datetime.today().display("[month]/[day]/[year]")
      // h(1fr)
      
      [Page #counter(page).display("1")]
      // [#date - Page #counter(page).display("1")]
      
    },
    footer-descent: 43%,
    footer: {
      set text(
        // white, 
        colors.at(0),
        .7em, 
      )
      set par(justify: false)
      align(right, block(width: auto, align(right, link("https://cyclone-robosub.github.io/")[Cyclone Robo Sub \@ UC Davis])))
      // place(bottom + right, 
      //   dx: .6in, 
      //   dy: -.3in, 
      //   image("branding/propeller.svg", width: .4in)
      // )
    },
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

  
  set grid(
    gutter: .2in
  )
  
  set heading(numbering: none)
  show heading: set text(
    colors.at(0),
    font: "Prompt",
    weight: "semibold",
  )
  
  show heading.where(level: 1): it => {
    set par(leading: .5em)
    set text(1.25em, weight: "semibold")
    v(-.5em)
    block(it.body)
  }
  
  show heading.where(level: 2): it => {
    set text(1.25em, weight: "bold", tracking: 1.5pt)
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
 
  // Title
  align(center,{
    text(2.2em, font: "Prompt", weight: "bold", fill: colors.at(0), title)
    v(-1.7em)
    text(.7em, colors.at(3))[See the document source on #link("https://github.com/Cyclone-Robosub/2025-Robot-Breakdown", text(fill: colors.at(0),underline[GitHub]))]
    v(-.7em)
    line(length: 100%, stroke: 1pt + colors.at(0))

  }
  )

  v(-.2em)
  
  // let list(list) = {
  //   for l in list {
  //     l + if l != list.last() [, ]
  //   }
  // }

  // align(
  //   center, 
  //   stack(
  //     spacing: .7em,
  //     [*Leadership:* #list(leadership)],
  //     [*Advisors:* #list(advisors)],
  //   )
  // )
  // v(.9em)
  // 
  {
    show image: it => box(
      it, 
      radius: 5pt, 
      clip: true
    )

    include "texts/abstract.typ"
    pagebreak()
    // include "texts/about-us.typ"
    // include "texts/robosub.typ"
    include "texts/design.typ"
    include "texts/manipulation.typ"
    pagebreak()
    include "texts/software.typ"
    include "texts/dynamics.typ"
    include "texts/vision.typ"
    pagebreak()
    include "texts/electrical.typ"
  }

  set page(
    margin: (
    bottom: 1.2in, 
    // top: 1in, 
    rest: .75in),
    background: align(bottom, image("branding/background.svg", width: 101%)),
    footer: {
      set text(white, .8em, )
      set par(justify: false)
      align(right, block(width: 1.30in, align(right, link("https://cyclone-robosub.github.io/")[Cyclone Robo Sub \@ UC Davis])))
      place(bottom + right, 
        dx: .6in, 
        dy: -.3in, 
        image("branding/propeller.svg", width: .4in)
      )
    },
  )

  {
    show image: it => box(
      it, 
      radius: 5pt, 
      clip: true
    )
    include "texts/research.typ"
    // include "texts/acknoledgements.typ"
  }

}

#report()

