printf("Lagrange's Interpolation method\n");
n=input("Enter the number of data points:");
X=input("Enter x");
Y=X.^4;

t = [0];
for i = 1:n
    t = t + lagrange_poly (X, i) * Y(i);
end

Lp = t

x_eval = min(X):0.1:max(X);
y_eval = polyval(Lp,x_eval);
plot(x_eval,y_eval); 
hold on;
plot(X,Y,"xr");


