a=input(" Enter the lower limit: ");
b=input("\n Enter the upper limit: ");
n=input("\n Enter the no. of intervals: ");
X=zeros(1,n);
h =(b-a)/n;
for i=1:n
  X(i)=a+((i-1)*h);
endfor
Y=zeros(1,n);
for i=1:n
  Y(i)=X(i)^2;
endfor
for j = 1:n
    l=lagrange_poly (X,j);
    c=polyint(l);
    t=polyval(c,b) - polyval(c,a);
    I = I +  t* Y(j);
endfor
I