clear all
clc
syms x
range =[1 2];
f=exp(x)+2^(-x)+2*cos(x)-6
% x0=0;
n=3;
[result2]=NewtonRaphsonVsCount(x,f,range,20)
[result]=NewtonRaphsonVsError(x,f,range,1e-5)
