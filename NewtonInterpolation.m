clc
clear all

function yint=newtonInterpolation(x,y,xi)

n=length(x);
if length(y)~=n
    error('x and y must have the same length');
end

b=zeros(n,n);
b(:,1)=y(:);

for j=2:n
    for i=1:n-j+1
        b(i,j)=(b(i+1,j-1)-b(i,j-1))/(x(i+j-1)-x(i));
    
    end
end

xt=1; 
yint=b(1,1);
for j=1:n-1
    xt=xt*(xi-x(j));
    yi=yi+b(1,j+1)*xt;
end
end

