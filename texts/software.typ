= Software Controls
The vehicle relies on a combination of sensors to determine its depth, heading, and position within the pool. All data and commands are sent over a ROS network and mission planning is handled by an executive control algorithm written in C++.
#figure(
  image("../graphics/controls-flowchart.svg", width: 100%),
  caption: [Software Structure Across All Hardware]
)