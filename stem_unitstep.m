clc;
clear;

n_x = -100:100;
% Create a unit step signal
unit_step(n_x>=0) = 1;

figure(4)
subplot(1,1,1)
stem(n_x,unit_step, 'black', 'filled', 'LineWidth', 2)
axis([-15, 15, -2, 2]);
grid on;
title('unit step signal', 'fontname', 'Comic Sans MS', 'color', 'red', 'fontsize', 14');
xlabel('time', 'fontname', 'Comic Sans MS', 'fontsize', 12);
ylabel('amplitude', 'fontname','Comic Sans MS', 'fontsize', 12);




