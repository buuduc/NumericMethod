clc
clear all

%% input
dy= @(x,y) 4*x+x*sin(x+2*y)
x0=1;
y0=3.2;
h=0.2
xEnd=2.2

%% handle
X= [x0];
Y=[y0];
X=[x0:h:xEnd]';

for k=2:length(X)
    K1(k,1)=h*dy(X(k-1),Y(k-1));
    K2(k,1)= h*dy(X(k-1)+h/2,Y(k-1)+K1(k)/2);
    K3(k,1)=h*dy(X(k-1)+h/2,Y(k-1)+K2(k)/2);
    K4(k,1)=h*dy(X(k-1)+h,Y(k-1)+K3(k));
    Y(k,1)=Y(k-1)+(K1(k)+2*K2(k)+2*K3(k)+K4(k))/6;
end
table(X,K1,K2,K3,K4,Y)