# SCARA Robot Simulation with PID Control 🤖

A complete SCARA robot simulation built from scratch in MATLAB, implementing 
forward/inverse kinematics, PID closed-loop control, trajectory planning, 
and real-time 3D animation.

## Features
- Forward Kinematics (FK) — end-effector position from joint angles
- Inverse Kinematics (IK) — joint angles from target position
- Cubic trajectory planning with smooth interpolation between waypoints
- PID closed-loop control for all 3 joints simultaneously
- Real-time dual-panel animation (top view + 3D view)
- Pick & place simulation across multiple target positions

## Results
| Target | Position Error |
|--------|---------------|
| Target 1 | 0.5 mm |
| Target 2 | 1.0 mm |
| Target 3 | 1.0 mm |
| Target 4 | 2.7 mm |

Sub-millimeter to low-millimeter accuracy across all targets.

## Robot Specifications
- Link 1 length: 0.3 m
- Link 2 length: 0.25 m
- DOF: 3 (2 rotational + 1 prismatic)
- Workspace radius: 0.05 m – 0.55 m

## PID Gains
| Parameter | Value |
|-----------|-------|
| Kp | 20 |
| Ki | 0.5 |
| Kd | 0.8 |

## Tech Stack
- MATLAB
- Simulink
- Simscape

## Demo
The simulation performs a 4-point pick & place cycle:
1. FK computes end-effector position from joint angles
2. IK solves joint angles for each target
3. PID drives each joint to the target with minimal error
4. Real-time animation shows robot motion in top and 3D views
