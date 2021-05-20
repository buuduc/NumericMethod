clc;
clear all;
dy= @(x,y) 4*x+x*sin(x+2*y);
firstPoint=1;
y0=3.2
finalPoint=2.2;
h=0.2
Y=[y0];
range = [firstPoint finalPoint];
X=[range(1):h:range(2)]
for i =1 :length(X) -1 
    Y(i+1)=Y(i)+h*dy(X(i),Y(i))
end
X=X';
Y=Y';
table(X,Y)
