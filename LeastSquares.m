clc
clear all

lwidth=2;
fsize=20;
msize=30;

t1 =1;
t2 =2;
t3=3;
t4=4;
t5=5;
t6=6;
t7=7;
tvec=[t1 t2 t3 t4 t5 t6 t7].';
m1= 0.7;
m2=0.62;
m3=1.49;
m4=3;
m5=2;
m6=3.1;
m7=3.9;
mvec=[m1 m2 m3 m4 m5 m6 m7].';

figure(1)
clf
plot(tvec,mvec,'r+','markersize',msize)
hold on
plot(tvec,mvec,'r.','markersize',msize)
axis equal

A=[...
    t1 1;...
    t2 1;...
    t3 1;...
    t4 1;...
    t5 1;...
    t6 1;...
    t7 1];

v=mvec;

result = A\v;
a=result(1);
b=result(2);

tplot = linspace(t1,t7,5);
mplot = a*tplot+b;
plot(tplot,mplot,'b','LineWidth',lwidth)

