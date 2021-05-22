p = @(x) sqrt(x)
q = @(x) cos(x)
X=[1 1.2 1.4 1.6 1.8 2]
Y=[2.27 2.37 2.45 2.52 2.6 2.62]
LeastSquaresMethod(X,Y,p,q)