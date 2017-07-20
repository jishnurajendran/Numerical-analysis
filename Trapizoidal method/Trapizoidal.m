h=0.002;
x = 0:h:2;
y = 2*x.^1;
I=0;
for i=1:length(y)-1
    I=I+((y(i)+y(i+1))*h)/(2);
end
I
