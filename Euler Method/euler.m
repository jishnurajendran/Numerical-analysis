% Author: Jishnu Rajendran
%h=0.02;
n=input("n");
%interval [a,b]
a=0;
b=2;
h=(b-a)/n;
function z=f(t,y)
z = y - t^2 + 1;
endfunction

function y=of(t)
y =  (t+1)^2 - 0.5*exp(t);
endfunction
Y=zeros(1,length(a:h:b));
Y(1)=0.5; %y(a)=0.5
i=1;
printf("   t        yi       y(t)      error \n");
for t=a:h:b
    Y(i+1)= Y(i) + h*f(t,Y(i));
    printf("%f  %f  %f  %f \n",t,Y(i),of(t),Y(i)-of(t));
    i++;
end
