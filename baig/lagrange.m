function [y] = lagrange(x,X,Y)
% ham nay nhan bien x, mang X va mang Y sau do tra ve mot da thuc  noi suy lagrange


lengX=size(X,2);
if lengX~=size(Y,2)
    fprintf('loi !!! \n X va Y khong cung kich co, de nghi kiem tra lai')
    y=NaN;
    return
end

y=0;
for i = 1:lengX
    yi=Y(i);
    xi=X(i);
    element=Y(i);
    gg=1;    xx=1;
    for j=1:lengX
        if i ~=j
            xj=X(j);
            element=element*((x-xj)/(xi-xj));
        end
    end
    y=y+element;
end
if isa(y,'sym')
    y = expand(y);
end