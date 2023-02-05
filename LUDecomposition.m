clc;
clear al;


A = [ 7 1 9;1 -2 -4;12 8 1]
[R C] = size(A);
if R~=C
    disp('Rows!=Col');
    return;
end
n = R;
U  =  A;
L=eye(n);
for m=1:n
    if (U(m,m) == 0) 
        error('Error'); 
    end
    L(m+1:n,m)=U(m+1:n,m)/U(m,m);
    for j=m+1:n
        U(j,:)=U(j,:)-L(j,m)*U(m,:);
    end
end
A
L
U