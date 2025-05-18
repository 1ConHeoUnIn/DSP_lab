clc;
clear;
close all;

%create a discrete signal x[n]
x= [1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5];

% Crete 1 time sequence n
n_x = 0 : length(x)-1;

% create a figure to contain signal
figure(1);

% divides the figure
subplot(2,2,1);

%draw a stem graph (discrete column) of signal according ti the n_x axis
stem(n_x, x ,"filled",'linewidth',2);

%Set the axis limit
axis([-30, 30, -30, 30]);

% Enable the grid for better visualization
grid on;

% Sets the title of the plot to x[n]
title('x[n]', 'fontname', 'comic sans ms', 'fontsize', 12);

% Lables the x-axis as time
xlabel('time', 'fontname', 'comic sans ms', 'fontsize', 12);

% Lables the y-axis as amplitude
ylabel('amplitude', 'fontname', 'comic sans ms', 'fontsize', 12);


% make x[2n]
d = decimate(x,2);

% Crete 1 time sequence n
n_d = 0 : length(d)-1;

% divides the figure
subplot(2,2,2);

%draw a stem graph (discrete column) of signal according ti the n_x axis
stem(n_d, d ,"filled",'linewidth',2);

%Set the axis limit
axis([-30, 30, -30, 30]);

% Enable the grid for better visualization
grid on;

% Sets the title of the plot to x[2n]
title('x[2n]', 'fontname', 'comic sans ms', 'fontsize', 12);

% Lables the x-axis as time
xlabel('time', 'fontname', 'comic sans ms', 'fontsize', 12);

% Lables the y-axis as amplitude
ylabel('amplitude', 'fontname', 'comic sans ms', 'fontsize', 12);


%make x[n/2]
i = interp(x,2);

% Crete 1 time sequence n
n_i = 0 : length(i)-1;

% divides the figure
subplot(2,2,3);

%draw a stem graph (discrete column) of signal according ti the n_x axis
stem(n_i, i ,"filled",'linewidth',2);

%Set the axis limit
axis([-30, 30, -30, 30]);

% Enable the grid for better visualization
grid on;

% Sets the title of the plot to x[2n]
title('x[n/2]', 'fontname', 'comic sans ms', 'fontsize', 12);

% Lables the x-axis as time
xlabel('time', 'fontname', 'comic sans ms', 'fontsize', 12);

% Lables the y-axis as amplitude
ylabel('amplitude', 'fontname', 'comic sans ms', 'fontsize', 12);




