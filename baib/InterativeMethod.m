syms x
range=[9 10];
x0=10
n=4
X=[x0]
deltaHauNghiem=[0]
%% tim he so co q
g=(1000-x)^(1/3)
g1=diff(g,x,1)
linrange=linspace(range(1),range(2));
q=double(max(subs(abs(g1),x,linrange)))
%% Kiem tra q xem co hoi tu hay khong (0<=q<1)
if q>=0 && q<1
    disp('hoi tu')
end

%% bat dau giai
for i=1:n
   X=[X;double(subs(g,x,X(end)))] ;
   deltaHauNghiem=[deltaHauNghiem;double((q/(1-q))*(X(end)-X(end-1)))];
end

%% sai so tien nghiem
deltaTienNghiem=q^n*abs(X(2)-X(1))/(1-q)
%ve bang
n=[0:n]';

a=table(n,X,deltaHauNghiem)