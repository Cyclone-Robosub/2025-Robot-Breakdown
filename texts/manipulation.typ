#import "@preview/oasis-align:0.2.0": * 
#set image(width: 100%)

= Manipulation
#oasis-align(
  //swap: true, 
  int-dir: -1,
  int-frac: .7,
  [
    We designed servo-actuated mechanisms to release two small droppers into a bin during competition runs. The AUV centers itself over the bin using a downward facing camera and computer vision.

    #oasis-align(
      figure(
        image("../images/bin.jpg"),
        caption: [Bin Task]
      ),
      [#figure(
        image("../images/paths.jpg"),
        caption: [Path Marker]
      ) <path>],
    )
  ],
  [#figure(
    image("../graphics/dropper_assembly.png"),
    caption: [Dropper Assembly]
  )],
)