% Author: Jishnu Rajendran
clc; %Clears editor screen and background
clf; %Clears the plot screen 
format long; %sets format to long

printf("Finding Fixed point\n");
%n=input("Enter the number of iterations:");
%a=input("Enter the inital guess :");
n=500;
a=pi/2;

c=zeros(1,n); %creates a row vector of length n


c(1)=a; %Initial guess
%Here we are calling the function Eqn() which we have defined to compute f(x) for a given f


for i=1:1:n-1
c(i+1)=Eqn(c(i));
endfor

j=[1:1:n];

%Prints the following out in a .txt file 
fileID = fopen('fix_b.txt','w'); 
fprintf(fileID,'%8s %13s %14s \n','Iteration','x(i)', 'f(x(i)))');
fprintf(fileID,'%7d %16.8f %16.8f \n',[j;c;Eqn(c)]);
fclose(fileID);


%Plotting i vs c(i) for each i=1,2,..n.
plot(j,c,"b-");
 title("Fixed point Method"); 
 xlabel ('Iterations No.'); %Label for x-axis in the plot
 ylabel ('Iteration value'); %Label for y-axis in the plot
xlim([1, n]); %sets the lower lim to 1 and upper limit to n for x-axis 
ylim([min(c), max(c)]); %sets lower limit to min(c) and upper limit to max(c) for y-axis


 print -dpdf Iteration-no-vs-points_fix_b.pdf %pdf printing of the output graph%
 