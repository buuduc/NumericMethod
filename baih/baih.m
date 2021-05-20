clc
clear all
X=[1.4 2.2 2.7 3.2]
Y=[1.3 2.1 0.1 1.9]
result=NaturalSpline(X,Y)

syms x
for i= 1: length(result)
    fprintf('X trong khoang [%2.2f,%2.2f] : \n',X(i),X(i+1));
    disp(result(i,1)+result(i,2)*x+result(i,3)*x^2)
end

%% tim gia tri tai x = 2.5 
i=2
y=result(i,1)+result(i,2)*x+result(i,3)*x^2;
double(subs(y,x,2.5))
%% tim gia tri tai x = 2.9
i=3
y=result(i,1)+result(i,2)*x+result(i,3)*x^2;
double(subs(y,x,2.9))
