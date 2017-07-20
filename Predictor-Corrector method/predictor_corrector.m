%h=0.02;
n=input("n:");
%interval [a,b]
a=0;
b=2;
h=(b-a)/n;
k=input("k:");
function z=f(t,y)
z = y - t^2 + 1;
endfunction

function y=of(t)
y =  (t+1)^2 - 0.5*exp(t);
endfunction

YY=zeros(1,length(a:h:b));
Y=zeros(1,length(a:h:b));
Y(1)=0.5; %y(a)=0.5

i=1;
printf("   t        yi       y(t)      error \n");
for t=a:h:b
    YY(i+1)= Y(i) + h*f(t,Y(i));
    for j=1:k
      Y(i+1)= Y(i) + (h/2)*(f(t,Y(i)) + f(t+h,YY(i+1)));
      YY(i+1)= Y(i+1);
    end
    printf("%f  %f  %f  %f \n",t,Y(i),of(t),abs(Y(i)-of(t)));
    i++;
end