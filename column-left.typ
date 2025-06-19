#import "@preview/oasis-align:0.2.0": * 
#set image(width: 100%)

= About Us
#oasis-align(
  swap: true, 
  int-dir: -1,
  int-frac: .4,
  figure(
    image("images/full-team.JPG"),
    caption: [2024-2025 Team Photo]
  ),
  [
    Cyclone RoboSub, founded in 2023, is an engineering student design team at UC Davis developing an autonomous underwater vehicle (AUV). Our interdisciplinary team of 30+ students is organized into three divisions and six sub-teams, each tackling different aspects of this project.
  ],
)

= RoboSub Competition
#oasis-align(
  int-frac: 0.4, 
  figure(
    image("design/robonation.png"),
    // caption: [RoboNation Logo]
  ),
  [
    Teams from around the world compete with custom AUVs which complete tasks such as manipulating objects, maneuvering around obstacles, and firing torpedoes. Our team prioritized navigation-based tasks, eliminating the need for precise manipulation. Cyclone RoboSub will be competing for the first time this year and debuting our first vehicle vehicle!
  ]
)

= Vehicle Design
Our chosen thruster configuration allows for six degrees of freedom while its symmetry simplifies vehicle control and maneuverability. Designed to be neutrally buoyant and have a low center of mass, the vehicle naturally corrects errors in orientation. All electronics are housed in an acrylic tube with Blue Robotics WetLink penetrators to connect cables to the external environment. 

#figure(
  image("graphics/robot-with-labels.svg"),
  caption: [Structural CAD of Robot (Made in Onshape)]
)

= Manipulation
#oasis-align(
  //swap: true, 
  int-dir: -1,
  int-frac: .7,
  [
    We designed servo-actuated mechanisms to release two small droppers into a bin during competition runs. The AUV centers itself over the bin using a downward facing camera and computer vision.

    #oasis-align(
      figure(
        image("images/bin.jpg"),
        caption: [Bin Task]
      ),
      [#figure(
        image("images/paths.jpg"),
        caption: [Path Marker]
      ) <path>],
    )
  ],
  [#figure(
    image("graphics/dropper_assembly.png"),
    caption: [Dropper Assembly]
  )],
)