syms x
f=exp(x)-x^3-sin(x)-0.9
n=10
range = [0.2,1]
[a,b]=BisectionMethod(x,f,[0.2,1],n)
fprintf('%4.6f',a)