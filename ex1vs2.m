clc;
clear;
close all;
% sketch x[-2n-2]

x = [1 2 3 4 5 4 3 2 1 0 1 2 3 4 5 4 3 2 1 0 1 2 3 4 5 4 3 2 1 0];

n_x = 0: length(x)-1;

[s,n_s] = shift(x, 2, n_x)

[r,n_r] = reverse(s, n_s)

 d = decimate(r, 2);

 a = n_r - (length(r)-1);

 n_d = a : length(d)-1 +a;

figure(1)

subplot(4,1,1)
stem(n_x,x)

subplot(4,1,2)
stem(n_s,s)

subplot(4,1,3)
stem(n_r,r)

subplot(4,1,4)
stem(n_d,d,'blue', 'filled','linewidth', 2)
axis([-40 , 40 , 0 , 5])
grid on;
title('x[-2n-2]','fontname', 'arial', 'fontsize', 14, 'color', 'red')
xlabel('time','fontname', 'arial', 'fontsize', 12)
ylabel('amplitude', 'fontname', 'arial', 'fontsize', 12)




%x[n] convole x[-2n-2]
[y ,n_y] = convolve(x, n_x, d, n_d);
figure(2)
subplot(3,1,1)
stem(n_x,x)

subplot(3,1,2)
stem(n_d,d)

subplot(3,1,3)
stem(n_y,y,'blue', 'filled','linewidth', 2')
axis([-30, 30 , -30, 150])
grid on; 
title('x[n] convole x[-2n-2]','fontname','arial', 'FontSize', 14', 'color', 'red' )
xlabel('time', 'fontname', 'arial', 'fontsize', 12)
ylabel('amplitude', 'fontname', 'arial', 'fontsize', 12)





