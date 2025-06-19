#import "@preview/oasis-align:0.2.0": * 
#set image(width: 100%)

= Software Controls
The vehicle relies on a combination of sensors to determine its depth, heading, and position within the pool. All data and commands are sent over a ROS network and mission planning is handled by an executive control algorithm written in C++.
#figure(
  image("graphics/controls-flowchart.svg", width: 100%),
  caption: [Software Structure Across All Hardware]
)

= Dynamics Modeling
The control scheme is built in MATLAB Simulink which generates trajectories and regulates PID feedback based on a vehicle dynamics model and waypoints. The model accounts for the AUV's 6-axes of freedom, buoyancy, drag, and vectored thruster configuration. The parameters are measured and validated based on IMU data collected during underwater testing.

#figure(
  image("graphics/controller-plant.svg", width: 95%),
  caption: [Vehicle Dynamics Model and Control Loop]
)

#v(-1em)
= Vision
#grid(
  columns: (auto, 65%),
// #oasis-align(
  // swap: true, 
  // int-dir: -1,
  // int-frac: .32,
  [
    Two cameras provide video feeds, which are processed by a YOLO vision model to identify objects of significance. The model is on team-gathered image-data of game elements such as the path found in @path in pools.Identifying objects along the course help the robot track its position within the pool.
  ],
  figure(
    image("images/vision-model.jpg"),
    caption: [Object Recognition]),
)