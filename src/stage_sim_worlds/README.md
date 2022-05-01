# Stage Simulator Worlds
This repository contains the worlds to be used in our tests

---

## Creating a new world file
To create a new world, use another one as a base (the wahrehouse_3robots.world, for example).

### Change the world background
  Change the floorplan bitmap to the image you want
  From map.yaml resolution, calculate the window scale (scale = 1./resolution)
  Set the window size based on the image size (in pixels)
  Set the floorplan size ```floorplan.size[i] = window.size[i]/window.scale, for i=0,1. floorplan.size[2] = height of "walls"```
### Add another robot
  Declare a new rhino_robot on the end file
  Set the robot name, color and pose (x,y,z,yaw)
### Set Lidars coverage
  You can change what the lidars will see by changing the obstacles/lidars heights
  The right_lidar and left_lidar height are defined inside rhino_robot. Their poses are defined from the top of the robot. 
  The lidars height to the floor are actually ```lidar_height = rhino_robot.size[2] + right_lidar.pose[2]```. The lidars will only see objects in this height.
  If you want to ignore other robots, just make ```right_lidar.pose[2] > 0``` (and also for the left left_lidar). It will see just objects above the robots height
  If you want to ingnore the floorplan bitmap image (the walls), make ```floorplan.size[2] < rhino_robot.size[2] + right_lidar.pose[2]``` (and also for the left left_lidar)
