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
    image("../images/vision-model.jpg"),
    caption: [Object Recognition]),
)