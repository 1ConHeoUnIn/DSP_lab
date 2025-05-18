clc;
clear;
close all;

% create a discrete signal x[n]
x= [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]; % 11 giá trị

% Create 1 time sequence n
n_x =0:10;

% create 1 figure
figure(1); 
% divides the firgure
subplot(2,2,1) % 2 rows 2 column and draw at position 1

% Draw a stem graph (discrete column) of signal X according to the NX axis.
stem(n_x, x , '-b', 'filled', 'linewidth', 2);

% Set the axis limit
axis([-15, 15, -4, 4]); % x_min , x_max , y_min . y_max

%Enables the grid for better visualization.
grid on;

%Sets the title of the plot to "x[n]".
title('x[n]', 'fontname', 'Comic Sans MS','color', 'red', 'fontsize', 14);

%Labels the x-axis as time
xlabel('time','fontname', 'Comic Sans MS', 'fontsize', 12);

%Labels the y-axis as amplitude
ylabel('amplitude','fontname', 'Comic Sans MS', 'fontsize', 12);

