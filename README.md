# Enviroment for Practical Exam of Automni Selective Process

In this enviroment you will found the tools needed to conclude the proposed tasks.

## Executing the Simulator

For this exam the simulation engine proposed is the Stage ROS. The choice was motivated because of the lightweight property of the tool in comparisson with the gazebo.

For start the simulator you can use with an roscore running:

```
rosrun stage_ros stageros ~/catkin_ws/src/stage_sim_worlds/worlds/practical_exam.world
```

And for visualize the data:

```
rosrun rviz rviz -d `rospack find stage_ros`/rviz/stage.rviz
```
