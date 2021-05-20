
function answer= SimpsonMethod(f,range,n)
% a = input('Enter the function in the form of variable x:','s');       % user defines the function
f = inline(f);
a=range(1);
b=range(2);
% a = input('Enter the lower limit of the integral:'); %  starting point or lower limit of the area
% b = input('Enter the upper limit of the integral:'); %  end point or upper limit of the area
% n = input('Enter the no. of sub-intervals:')


% Test whether the chosen value of n (sub-intervals) is a multiple of 2 or not.
if mod(n,2) == 0
	fprintf('The chosen no. of sub-intervals is good')
else
	fprintf('ERROR! : The chosen no. of sub-intervals should be a multiple of 2')
	return 
end

% define the interval h

h = (b-a)/(n);

% Initialize the algorithm
Sum = (f(a) - f(b));

% Run the loop
for i = 1:2:(n-1)
  Sum = Sum + 4*f(a + i*h) + 2*f(a + (i+1)*h);
end

% Output the answer as the area.
answer = Sum*(h/3.0);

% fprintf('The solution is:')
% answer