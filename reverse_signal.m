clc;
clear;
close all;
% x[-n]
x = [2 2 2 2 2]
n_x = 0:4;
[r, n_r] = reverse(x,n_x);

figure(3);
subplot(2,1,1);
stem(n_x, x, 'black', 'filled', 'linewidth',2)
axis([-5, 10, -4 , 4]);
grid on;
title('x[n]','fontname','comic sans ms','color', 'red', 'fontsize',14);
xlabel('time', 'fontname','comic sans ms', 'fontsize', 12)
ylabel('amplitude', 'fontname','comic sans ms', 'fontsize', 12)

subplot(2,1,2);
stem(n_r,r,'-m', 'filled', 'linewidth', 2);
axis([-5, 10, -4, 4]);
grid on;
title('x[-n]', 'fontname','comic sans ms', 'color', 'red','fontsize',14);
xlabel('time', 'fontname','comic sans ms', 'fontsize', 12);
ylabel('aplitude', 'fontname', 'comic sans ms', 'fontsize',12);