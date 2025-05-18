clc;
clear;
close all;
% x[n-4];
x = [1 1 1 1 1];
n_x = 0:4;
N =4;
[s, n_s] = shift(x , N , n_x);

figure(1);
subplot(2,1,1);
stem(n_x , x, 'black', 'filled' , 'linewidth', 2);
axis([-5 , 10, -4, 4]);
grid on;
title('x[n]', 'fontname','comic sans ms', 'color', 'red','fontsize', 14);
xlabel('time', 'fontname','comic sans ms', 'fontsize', 12);
ylabel('amplitude', 'fontname','comic sans ms', 'fontsize', 12);

subplot(2,1,2);
stem(n_s , s, '-m', 'filled' , 'linewidth', 2);
axis([-5, 10, -4, 4]);
grid on;
title('x[n-4]', 'fontname','comic sans ms', 'color', 'red','fontsize', 14);
xlabel('time', 'fontname','comic sans ms', 'fontsize', 12);
ylabel('amplitude', 'fontname','comic sans ms', 'fontsize', 12);