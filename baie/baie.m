
clc
clear all
%% bai 3.12 trang 59
heSo=[10 -1 2 0; ...
    -1 11 -1 3;...
    2 -1 10 -1;...
    0 3 -1 8];
heSoTuDo=[6;25;-11;15];
initVar=[0 0 0 0]';
n=5;
key=0;
% heSo=[11 -5;2 13]
% heSoTuDo=[3;4]
% initVar=[.8;.6]
% n=2
GaussSeidel(heSo,heSoTuDo,initVar,n,key)
