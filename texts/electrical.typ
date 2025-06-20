#import "@preview/oasis-align:0.2.0": *
#set image(width: 100%)

= Electrical Systems
The vehicle is powered by a single 16V Lithium Polymer (LiPo) battery which supplies power to the AUV's computers, sensors, and thrusters. Electrical components are  mounted to a 3D-printed internal structure to maximize volume within the tube and efficiently route wires between components. A custom PCB distributes 5V of power from the buck converter to low-voltage components.

#oasis-align(
  figure(
    image("../images/internals.jpg"),
    caption: [Primary robot wiring],
  ),
  figure(
    image("../images/pcb.jpg"),
    caption: [Custom designed PBCs],
  )
)

#figure(
  image("../graphics/electrical-diagram.svg", width: 90%),
  caption: [Robot Electrical Diagram]
)