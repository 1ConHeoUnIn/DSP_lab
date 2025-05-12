clc;
clear;
% x[n] convolve x[-2n-2]

% Create x[n] 
x = [ 0, 1, 2, 3, 4, 5];
n_x = 0:5;

% do x[-2n-2]
[x2 , n_x2] = reverse(x, n_x);

n_x2 = 2*n_x2;

[x2, n_x2] = shift(n_x2, 2, n_x2);

% convolution
[c , n_c] = convolve(x, n_x, x2, n_x2);



figure(7)
subplot(2,2,1)
stem(n_x, x, 'black', 'filled', 'linewidth', 2)
axis([-10, 10, -10, 10])
grid on
title('x[n]', 'fontname', 'Comic Sans MS', 'color', 'red', 'fontsize', 14)
xlabel('time', 'fontname', 'Comic Sans MS', 'fontsize', 12)
ylabel('amplitude', 'fontname', 'Comic Sans MS', 'fontsize', 12)

subplot(2,2,2)
stem(n_x2, x2, 'blue', 'filled', 'linewidth', 2)
axis([-10, 10, -10, 10])
grid on 
title('x[-2n-2]', 'fontname', 'comic sans ms', 'fontsize',12)
xlabel('time', 'fontname', 'Comic Sans MS', 'fontsize', 12)
ylabel('amplitude', 'fontname', 'Comic Sans MS', 'fontsize', 12)

subplot(2,2,3)
stem(n_c, c, 'red', 'filled', 'linewidth', 2)
axis([-10, 10, -10, 10])
grid on
title('x[n] convolve x[-2n-2]', 'fontname', 'comic sans ms', 'color', 'red', 'fontsize', 14)
xlabel('time', 'fontname', 'Comic Sans MS', 'fontsize', 12)
ylabel('amplitude', 'fontname', 'Comic Sans MS', 'fontsize', 12)