clc; %Clears editor screen and background
%clf; %Clears the plot screen 
format long; %sets format to long

printf("Newton's Interpolation method\n");

for n = 2:10
  X=linspace(0,10,n);
  Y=exp(X.^1);
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
  printf("%f \t %f  %f   %f \n",n,exp(5.5),polyval(P,5.5),exp(5.5)-polyval(P,5.5));
  if n==7
    x_eval = min(X):0.1:max(X);
    y_eval = polyval(P,x_eval);
    plot(x_eval,y_eval,"r",'LineWidth',3);
    hold on;
    plot(X,Y,"xr");
    hold on;
    plot(x_eval,exp(x_eval),"y",'LineWidth',4)
    hold on;
  endif
  if n==10
    x_eval = min(X):0.1:max(X);
    y_eval = polyval(P,x_eval);
    plot(x_eval,y_eval,"b",'LineWidth',2); 
  endif
end 



