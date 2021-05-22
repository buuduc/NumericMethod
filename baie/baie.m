
clc
clear all
%% bai 3.12 trang 59
heSo=[3.12 0.12 -1.02 1.02; ...
    1.12 4.12 0.23 2.12;...
    0.23 -3.22 6.11 2.22;...
    1.23 -0.23 3.23 2.22];
heSoTuDo=[3.21;2.11;0.22;1.23];
initVar=[0 0 0 0]';
n=10;
key=0;
% heSo=[11 -5;2 13]
% heSoTuDo=[3;4]
% initVar=[.8;.6]
% n=2
GaussSeidel(heSo,heSoTuDo,initVar,n,key)
