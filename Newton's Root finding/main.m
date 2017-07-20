clc; %Clears editor screen and background
clf; %Clears the plot screen 
format long; %sets format to long

printf("Finding root using Newton's method\n");
n=input("Enter the number of iterations:");
r=input("Enter the root:");
a=input("Enter the inital guess :");

c=zeros(1,n); %creates a row vector of length n
E=zeros(1,n); %creates a row vector of length n
Rel=zeros(1,n);
EE=zeros(1,n);
c(1)=a; %Initial guess
%Here we are calling the function Eqn() which we have defined to compute f(x) for a given f

E(1)=r-a;
Rel(1)=E(1)/r;
for i=1:1:n-1
c(i+1)=c(i)-((Eqn(c(i))/dEqn(c(i)))); 
z=Eqn(c(i)); 
E(i+1)=r-c(i+1); %Computes relative error at each step
if E(i)==0
  EE(i)=0;
else
  EE(i)=E(i+1)/E(i);
endif
Rel(i+1)=E(i+1)/r;
endfor

rr=c(n);
j=[1:1:n];

%Prints the following out in a .txt file 
fileID = fopen('Newton.txt','w'); 
fprintf(fileID,'%8s %13s %14s %17s %16s %15s \n','Iteration','x(i)', 'f(x(i)))', 'Error', 'Relatine_E', 'E[n+1]/E[n]');
fprintf(fileID,'%7d %16.8f %16.8f %16.8f %16.8f %16.8f\n',[j;c;Eqn(c);E;Rel;EE]);
fclose(fileID);

%Plotting i vs c(i) for each i=1,2,..n.
plot(j,c,"b-");
 title("Newton's Method"); 
 xlabel ('Iterations'); %Label for x-axis in the plot
 ylabel ('Approximation of roots'); %Label for y-axis in the plot
xlim([1, n]); %sets the lower lim to 1 and upper limit to n for x-axis 
ylim([min(c), max(c)]); %sets lower limit to min(c) and upper limit to max(c) for y-axis


 print -dpdf Iteration-no-vs-points.pdf %pdf printing of the output graph%
 
% hold off;
 %Plotting i and error r-c(i) for each i=1,2,..n.
 plot([1:1:n],E,'+r');
 title("Newton's Method"); 
 xlabel ('Iterations');
 ylabel ('Error');
 xlim([1, n]);
ylim([min(E), max(E)]);
 print -dpdf Iteration-no-vs-Error.pdf %pdf printing of the output graph%

printf("%f is a root\n", rr);
