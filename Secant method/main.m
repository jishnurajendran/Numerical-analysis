clc; %Clears editor screen and background
clf; %Clears the plot screen 
format long; %sets format to long

printf("Finding root using Secant method\n");
%n=input("Enter the number of iterations:");
%a=input("Enter the first initial guess:");
%b=input("Enter the second inital guess :");
n=10;
a=1.7;
b=1.8;

c=zeros(1,n); %creates a row vector of length n
E=zeros(1,n); %creates a row vector of length n

c(1)=a; %Initial guess
c(2)=b;
%Here we are calling the function Eqn() which we have defined to compute f(x) for a given f


for i=1:1:n-2
if (Eqn(c(i+1))-Eqn(c(i))) !=0
c(i+2)=c(i+1)-(Eqn(c(i+1))*(c(i+1)-c(i))/(Eqn(c(i+1))-Eqn(c(i)))); 
elseif
c(i+2)=c(i)
end
endfor

rr=c(n);
j=[1:1:n];

%Prints the following out in a .txt file 
fileID = fopen('Secant.txt','w'); 
fprintf(fileID,'%8s %13s %14s\n','Iteration','x(i)', 'f(x(i)))');
fprintf(fileID,'%7d %16.8f %16.8f \n',[j;c;Eqn(c)]);
fclose(fileID);

%Plotting i vs c(i) for each i=1,2,..n.
plot(j,c,"b-");
 title("Secant's Method"); 
 xlabel ('Iterations'); %Label for x-axis in the plot
 ylabel ('Approximation of roots'); %Label for y-axis in the plot
xlim([1, n]); %sets the lower lim to 1 and upper limit to n for x-axis 
ylim([min(c), max(c)]); %sets lower limit to min(c) and upper limit to max(c) for y-axis


 print -dpdf Iteration-no-vs-points.pdf %pdf printing of the output graph%
 
printf("%f is a root\n", rr);
