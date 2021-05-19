
function [result,m]=NewtonRaphsonVsCount(x,f,range,n,x0)
%% input la bien so x, ham so f,range, so buoc lap n,x0 (neu co)
%output [result,m,]
%% giai thuat
df=diff(f,x,1);
ddf=diff(f,x,2);
newton= x-f/df;
%% Tim dieu kien bat dau bat fourrier 
if exist('x0') == 0
    fourier=double(subs(f*ddf,x,range))
    for i =1:length(range)
        if fourier(i)>=0
            x0=range(i)
        end                             
    end
end
%% tim m de tinh sai so 
m=double(min(subs(abs(df), x, range)))
%% Bat dau giai thuat newton Raphson
X=[x0];
DeltaX=[0];
for i=1:n
    x_n=double(subs(newton,x,X(end)));
    X=[X;x_n];
    DeltaX=[DeltaX ; double(subs(abs(f)/m,x,x_n))];
end
n=[0:n]';
result=table(n,X,DeltaX);
