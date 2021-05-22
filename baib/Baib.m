clc 
clear all
syms x
range=[0 0.5];
x0=0.4;
err=1e-5
n=4;
g=sin(x)/2+0.1;
%% lap voi so lan lap cho truoc
InterativeMethod(x,g,x0,range,n)
%% lap voi sai so cho truoc
InterativeMethodWithError(x,g,x0,range,err)

