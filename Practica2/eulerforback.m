clc
clear all
close all
% y' =-2x-y
% initial condition
x(1) = 0;
y(1) = -2;
h = 0.1;% step size


%Euler Forward
%%%%%%%%%%%%%%
for i = 1:10
    y(i+1) = y(i)+h*(-2*x(i)-y(i));
    x(i+1) = x(i)+h;
end

% plot
figure
set(gca,'Fontsize',15)
plot(x,y,'+-', 'Linewidth', 1.5)
xlabel('x')
ylabel('y')




%Euler Backward
%%%%%%%%%%%%%%
% yn+1 = (yn -2hxn+1)/(1+h)
for i = 1:10
        x(i+1) = x(i)+h;
    y(i+1) = (y(i)-2*h*x(i+1))/(1+h);
end

% plot
hold on
plot(x,y,'+-', 'Linewidth', 1.5, 'color', 'red')
xlabel('x')
ylabel('y')
legend('forward','backward')