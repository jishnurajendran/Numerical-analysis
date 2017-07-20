printf("Hermit's Interpolation method\n");
X=input("Enter x: ");
func=[1,0,0];%polynomial function   x^3
n=length(func);
Y=zeros(1,n);
Y(1)=polyval(func,X);
f_der=func;
for i=2:n
  f_der=polyder(f_der);
  Y(i)=polyval(f_der,X);
end


Prod = zeros(n-1,n); 
p = conv(1,[1,-X]); %  poly (x-x(1))
 
for i = 1:n-1
 Prod(i,(n-(length(p)-1)):n) = (Y(i+1)*p)/factorial(i);
 p = conv(p,[1,-X]); % poly (x-x(1)^i....
end
 
P = sum(Prod,1);
P(1,n)=P(1,n)+Y(1);
Hermite_poly=P