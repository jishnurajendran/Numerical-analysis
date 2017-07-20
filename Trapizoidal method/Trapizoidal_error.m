%Composite Trapezoidal 

h=2; %step size
a=0;%
b=pi;% interval [a,b]
x = a:h:b;
y = sin(x.^1);
I=0;
for j=1:10
  h=h/10;
  for i=1:length(y)-1
      I=I+((y(i)+y(i+1))*h)/(2);
  end
  printf("Step size: %g \t Integral: %g \n",h,I);
  I=0;
end