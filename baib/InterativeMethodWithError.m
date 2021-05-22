

%% input
function [a]=InterativeMethodWithError(x,g,x0,range,error)

X=[x0]
deltaHauNghiem=[inf]
%% tim he so co q
g1=diff(g,x,1)
linrange=linspace(range(1),range(2));
q=double(max(subs(abs(g1),x,linrange)))
%% Kiem tra q xem co hoi tu hay khong (0<=q<1)
if q>=0 && q<1
    disp('hoi tu')
end

n=0;

%% bat dau giai
while deltaHauNghiem(end)>error
   X=[X;double(subs(g,x,X(end)))] ;
%    fprintf('lan lap thu: %d',n)
   n=n+1;
   deltaHauNghiem=[deltaHauNghiem;double(abs((q/(1-q))*(X(end)-X(end-1))))];
end

%% sai so tien nghiem
% syms n
deltaTienNghiem=q^n*abs(X(2)-X(1))/(1-q)
% ceil(solve(deltaTienNghiem==error,n))
%ve bang
n=[0:n]';

a=table(n,X,deltaHauNghiem);