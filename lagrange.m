clc
clear all

x=[0 20 40 60 80 100];
y=[12.78 27.3 39.4 47 59 72.6];
n=length(x)-1;

point=20;
sm=0;
for i = 1: n+1
    pr=1;
    for j = 1: n+1
        if j~= i
            pr = pr*(point-x(j))/(x(i)-x(j));
        end
    end
    sm = sm +y(i)*pr;
end
yp=sm 
