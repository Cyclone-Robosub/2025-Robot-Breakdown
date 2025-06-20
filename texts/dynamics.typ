= Dynamics Modeling
The control scheme is built in MATLAB Simulink which generates trajectories and regulates PID feedback based on a vehicle dynamics model and waypoints. The model accounts for the AUV's 6-axes of freedom, buoyancy, drag, and vectored thruster configuration. The parameters are measured and validated based on IMU data collected during underwater testing.

#figure(
  image("../graphics/controller-plant.svg", width: 95%),
  caption: [Vehicle Dynamics Model and Control Loop]
)
