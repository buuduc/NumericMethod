function LeastSquaresMethod(X,Y,p,q)

P=p(X);
Q=q(X);
i1= sum(P.^2)
i2= sum(P.*Q)
j1=sum(P.*Q)
j2=sum(Q.^2) 
mt=[i1 i2;j1 j2];
resu=[sum(P.*Y);sum(Q.*Y)]; % nhan ma tran de tim tong x*y 
ketqua=inv(mt)*resu; % tim ketqua bang ma tran nghich dao
fprintf('Xap xi ham tuyen tinh :')
A=round(ketqua(1),4)
B=round(ketqua(2),4)
table(A,B)
%% ve do thi
figure % goi cua so ra de ve
plot(X,Y,'.','markersize',20)
hold on
X=sort(X); % sap xep lai mang X tu be den lon de ve do thi
plot(X,A.*p(X)+B.*q(X))
y='A*p(x)+B*q(x)';
title(strcat('y=',y))
