clc 
clear all 

f=@(x) x.^3-6*x+3;
fd=@(x) 3*x^2-6;
format long
step=0;

x = [-5:0.1:5];

y = f(x);
%yler = arrayfun(f,xler); an alternative of f(x)=y

plot(x,y) %we need to have x and y values to sketch the graph
xline(0) 
yline(0)%sketching the lines
hold on

x0=input('Please enter initial point');
disp(x0);

error=input('Please enter the tolerance of error');
disp(error);

iteration=input('Please enter the number of iterations');
disp(iteration);

if abs(f(x0))>error
    for i=1:iteration
        x=x0-f(x0)/fd(x0);
        x0=x;
        step=step+1;
        fprintf('%d\t%f\t%f\n',step,x0,f(x0));
        hold on
        scatter(x0,f(x0),'red')
    end
end

scatter(x0,f(x0),'green')
hold off

