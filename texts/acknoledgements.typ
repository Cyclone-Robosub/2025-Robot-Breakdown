= Acknowledgements
#set text(.7em)

We would like to extent a huge thank you to our sponsors, including Citris and the Banatao Institute, Nortek,   InfoSec Decoded, and RIX Industries. In addition, we would like to thank our parents,  and the Engineering Student Design Center for the tools and workspace.

We would also like to thank all of our highly dedicated team members, including but not limited to
#let members = json("../data/members.json").map(it => it.name)
#for m in members {
  if m != members.first() and m != members.last() [, ]
  if m == members.last() [, and ]
  m
}.