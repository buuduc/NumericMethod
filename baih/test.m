clc
clear all
X=[2 4 5.5 6.5]
Y=[-2 0 -3 -3]
result=NaturalSpline(X,Y)

syms x
for i= 1: size(result,1)
    fprintf('X trong khoang [%2.2f,%2.2f] : \n',X(i),X(i+1));
    disp(result(i,1)+result(i,2)*(x-X(i))+result(i,3)*(x-X(i))^2+result(i,3)*(x-X(i))^3)
end

%% tim gia tri tai x = 2.5 
i=1
y= @(x)result(i,1)+result(i,2)*(x-X(i))+result(i,3)*(x-X(i))^2+result(i,4)*(x-X(i))^3
double(subs(y,x,3))
y(3)
% %% tim gia tri tai x = 2.9
% i=3
% y3=result(i,1)+result(i,2)*(x-X(i))+result(i,3)*(x-X(i))^2+result(i,3)*(x-X(i))^3
% double(subs(y3,x,2.9))
