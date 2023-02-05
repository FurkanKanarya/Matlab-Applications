f=@(x) x^3-6*x+3;
fd=@(x) 3*x^2-6;
format long
y=x.^3-6*x+3;
step=0;
plot(x,y);

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
    end
end





