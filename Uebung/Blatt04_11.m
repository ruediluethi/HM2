close all;
clear;
clc;

n = 20;

s = 3;

x = linspace(-s,s,n);
y = linspace(-s,s,n);
[X,Y] = meshgrid(x,y);

f = @(x,y) x.^2 - 4*x + x.*y.^2 + y.^3;

surf(X,Y,f(X,Y));

t = linspace(-s,s,n);

gamma1 = @(t) t.^3 + 3*t.^2 - 3;
gamma2 = @(t) t.^2 + 5*t + 27;
gamma3 = @(t) -t.^3 - 3*t.^2 + 21;
gamma4 = @(t) t.^2 - 5*t - 27

hold on;
plot3(ones(n,1)*s,t,gamma1(t),g,'LineWidth',2);
plot3(t,ones(n,1)*s,gamma2(t),'LineWidth',2);
plot3(ones(n,1)*-s,t,gamma3(-t),'LineWidth',2);
plot3(t,ones(n,1)*-s,gamma4(-t),'LineWidth',2);




