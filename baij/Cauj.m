clear all;
close all;
clc;
f='(3*x^2+x+1)/(3+cos(x))';
[answer]=SimpsonMethod(f,[0 1],30)