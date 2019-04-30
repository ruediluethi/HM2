close all;
clear;
clc;

n = 100;

x = linspace(-1,1,n);
y = linspace(-1,1,n);
[X,Y] = meshgrid(x,y);

f = @(x,y) 4*x.^2 - 9*y.^2;

Z = f(X,Y);
[dX,dY] = gradient(Z);

contour(X,Y,Z,10,'k');

hold on;

x1_1 = linspace(-1,-0.5,100);

hx1 = @(x,c)  1/3 * sqrt( 4*x.^2 - c );
hx2 = @(x,c) -1/3 * sqrt( 4*x.^2 - c );

plot(x,hx1(x,-2),'k','LineWidth',2);
plot(x,hx2(x,-2),'k','LineWidth',2);

plot(x,hx1(x,-1),'k','LineWidth',2);
plot(x,hx2(x,-1),'k','LineWidth',2);

plot(x,hx1(x,0),'k','LineWidth',2);
plot(x,hx2(x,0),'k','LineWidth',2);

x1_1 = linspace(-1,-0.5,100);
plot(x1_1,hx1(x1_1,1),'k','LineWidth',2);
plot(x1_1,hx2(x1_1,1),'k','LineWidth',2);

x1_2 = linspace(0.5,1,100);
plot(x1_2,hx1(x1_2,1),'k','LineWidth',2);
plot(x1_2,hx2(x1_2,1),'k','LineWidth',2);

x2_1 = linspace(-1,-1/sqrt(2)-eps,100);
plot(x2_1,hx1(x2_1,2),'k','LineWidth',2);
plot(x2_1,hx2(x2_1,2),'k','LineWidth',2);

x2_2 = linspace(1/sqrt(2)+eps,1,100);
plot(x2_2,hx1(x2_2,2),'k','LineWidth',2);
plot(x2_2,hx2(x2_2,2),'k','LineWidth',2);

legend('Höhenlinien','h(x,c) mit c = -2, -1, 0, 1, 2');

fig = gcf;
fig.PaperUnits = 'centimeters';
fig.PaperPosition = [0 0 10 10];
print(['Blatt01_4a.png'],'-dpng','-r300');

dfx = @(x,y) 8*x;
dfy = @(x,y) -18*y;

n = 10;
x = linspace(-1,1,n);
y = linspace(-1,1,n);
[X,Y] = meshgrid(x,y);

quiver(X,Y,dfx(X,Y),dfy(X,Y),'k');

legend('Höhenlinien','h(x,c) mit c = -2, -1, 0, 1, 2', 'grad f');

fig = gcf;
fig.PaperUnits = 'centimeters';
fig.PaperPosition = [0 0 10 10];
print(['Blatt01_4b.png'],'-dpng','-r300');
