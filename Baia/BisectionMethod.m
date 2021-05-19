function [x0,table]=BisectionMethod(x,f,range,n)
beginPoint= range(1)
endPoint=range(2)
table=cell(n+2,5)
table(1,:)={'Lan','begin','end','x = (a+b)/2 ','f(x)'}
for i =0:n
    x0=(beginPoint+endPoint)/2;
    fx=subs(f,x,x0);
    fa=subs(f,x,beginPoint);
    fb=subs(f,x,endPoint);
    table(i+2,:)={i,beginPoint,endPoint,x0,'f(x)'};
    if fx*fa<0
        endPoint=x0;
        table(i+2,5)={'+'};
    end

    if fx*fb<0
        beginPoint =x0;
        table(i+2,5)={'-'};
    end
end
