clc;
clear;
% x = u[n] - u[n-3]

n_x = -100:100
% Create u[n]
unit_step(n_x>=0) = 1;

% shift u[n] become u[n-2]
[unit_step_shift, n_x_shift] = shift(unit_step, 3, n_x)


%comsig 2 time sequence 
[us1 , us2 , n] = compsig(unit_step, n_x, unit_step_shift, n_x_shift)

% do x = u[n] - u[n-3]
x=us1-us2;

figure(5)
subplot(2,2,1)
stem(n_x,unit_step, 'black','filled', 'linewidth',2)
axis([-15,15,-2,2])
grid on
title('u[n]', 'fontname','comic sans ms','color','black', 'fontsize', 14);
xlabel('time', 'fontname','comic sans ms', 'fontsize', 12)
ylabel('amplitude', 'fontname','comic sans ms', 'fontsize', 12)

subplot(2,2,2)
stem(n_x_shift, unit_step_shift,'blue', 'filled', 'linewidth', 2)
axis([-15,15,-2,2])
grid on
title('u[n-3]', 'fontname','comic sans ms', 'color', 'blue',  'fontsize', 14)
xlabel('time', 'fontname','comic sans ms', 'fontsize', 12)
ylabel('amplitude', 'fontname','comic sans ms', 'fontsize', 12)

subplot(2,2,3)
stem(n, x, 'red', 'filled', 'linewidth', 2)
axis([-15,15,-2,2])
grid on
title('u[n] - u[n-3]','fontname', 'comic sans ms', 'color', 'm', 'fontsize', 14)
xlabel('time', 'fontname','comic sans ms', 'fontsize', 12)
ylabel('amplitude', 'fontname','comic sans ms', 'fontsize', 12)



