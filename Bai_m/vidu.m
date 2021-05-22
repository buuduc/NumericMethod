%% p(x)y''(x)+q(x)y'(x)+r(x)(yx)=f(x)
clc ;
clear all;
%% nhap in put dau vao
p= @(x) x^2+1
q=@(x) 5*x
r=@(x) -10
f=@(x) -8*x^2
y_knew=[1.4 0; ...
        1.8 0.8] %% [xi yi;]
h=0.1
range = [1.4 1.8]


%% giai thuat tinh toan
X=[range(1):h:range(2)]'
Y=zeros(length(X),1)
for i =1:size(y_knew,1)
    pos=uint8(abs((y_knew(i,1)-range(1))/h+1))
    Y(pos)=y_knew(i,2)
end
heSo=[]
for k=2:length(X)-1
    x=X(k)
    a=p(x)/h^2-q(x)/(2*h);
    b=r(x) - 2*p(x)/h^2;
    c=(p(x)/h^2)+q(x)/(2*h);
    heSo(k-1,[k-1,k,k+1])=[a,b,c]
    heSoTuDo(k-1,1)=f(x)
    
end
heSoTuDo=heSoTuDo-heSo*Y
deletePos=[];
for i =1:size(y_knew,1)
    pos=uint8(abs((y_knew(i,1)-range(1))/h+1));
%     heSo(:,pos)=[];
    deletePos=[deletePos pos];
%     X(pos)=[];

end
X(deletePos)=[];
heSo(:,deletePos)=[];

heSo
result=linsolve(heSo,heSoTuDo);
% result2=inv(heSo)*heSoTuDo
table(X,result)
