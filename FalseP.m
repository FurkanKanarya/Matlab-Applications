f=@(x) x^2+5*x-7;

xl=input('Enter the lower value');
xu=input('Enter the upper value');

if f(xl)*f(xu)>0
    fprintf('There is not a solution in the interval');
    return
elseif f(xl)== 0
    fprintf('%f is the solution',xl);
    return
elseif f(xu)==0
    fprintf('%f is the solution',xu);
    return
end

fprintf('i       xl         xu       xm\n');
fprintf('-----------------------------------')
for i=1:10
    xm = xu -(xl-xu)*f(xu)/(f(xl)-f(xu));
    
    fprintf('%i   %f   %f   %f\n',i,xl,xu,xm);

    if abs(f(xm))<0.00001
        return
    end

    if f(xl)*f(xm)<0
        xu =xm;
    elseif f(xm)*f(xu)<0
        xl=xm;
    end
end