% ── SCARA Robot Forward Kinematics ──────────────────────────────
% Robot parameters
L1 = 0.3;   % Link 1 length (m)
L2 = 0.25;  % Link 2 length (m)

% Joint values - try changing these!
theta1 = 30;   % Joint 1 angle (degrees)
theta2 = 45;   % Joint 2 angle (degrees)
d3     = 0.05; % Joint 3 vertical displacement (m)

% Convert to radians
t1 = deg2rad(theta1);
t2 = deg2rad(theta2);

% Forward Kinematics
x = L1*cos(t1) + L2*cos(t1 + t2);
y = L1*sin(t1) + L2*sin(t1 + t2);
z = -d3;

% Display results
fprintf('=== SCARA Forward Kinematics ===\n')
fprintf('Joint angles: theta1=%.1f°  theta2=%.1f°  d3=%.3fm\n', theta1, theta2, d3)
fprintf('End-effector: X=%.4fm  Y=%.4fm  Z=%.4fm\n', x, y, z)

% Visualise the robot arm (top view)
figure(1); clf;
% Joint positions
P0 = [0, 0];
P1 = [L1*cos(t1), L1*sin(t1)];
P2 = [x, y];

plot([P0(1) P1(1) P2(1)], [P0(2) P1(2) P2(2)], ...
     'b-o', 'LineWidth', 3, 'MarkerSize', 10, 'MarkerFaceColor', 'r')
hold on
plot(x, y, 'g*', 'MarkerSize', 15, 'LineWidth', 2)
grid on; axis equal;
xlim([-0.6 0.6]); ylim([-0.6 0.6]);
xlabel('X (m)'); ylabel('Y (m)')
title(sprintf('SCARA Top View | θ1=%.0f° θ2=%.0f°', theta1, theta2))
legend('Robot Links', 'End-effector', 'Location', 'best')