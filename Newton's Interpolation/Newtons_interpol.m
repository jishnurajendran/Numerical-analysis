clc; %Clears editor screen and background
%clf; %Clears the plot screen 
format long; %sets format to long

function [y]=f(x)
y=x.^3;
end

printf("Newton's Interpolation method\n");
n=input("Enter the number of data points:");
X=input("Enter x");
Y=sin(X.^1);
DD(1:n,1)=X;
DD(1:n,2)=Y;

for j = 1:n-1
 for k = 1:n-j  
 DD(k,j+2) = (DD(k+1,j+1)-DD(k,j+1))/(DD(k+j,1)-DD(k,1));
 end
end

Prod = zeros(n-1,n); 
p = conv(1,[1,-X(1)]); %  poly (x-x(1))
 
for i = 1:n-1
 Prod(i,(n-(length(p)-1)):n) = DD(1,i+2)*p;
 p = conv(p,[1,-X(i+1)]); % poly (x-x(1)*(x-x(2))....
end
 
P = sum(Prod,1);
P(1,n)=P(1,n)+Y(1);
 

x_eval = min(X):0.1:max(X);
y_eval = polyval(P,x_eval);
plot(x_eval,y_eval); 
hold on;
plot(X,Y,"xr");
Coefficients = P


