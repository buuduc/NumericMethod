function GaussSeidel(heSo,heSoTuDo,initVar,soLanLap,key)
    %% nhap input ban dau
    % heSo=input('nhap ma tran he so: ')
    % heSoTuDo=input('nhap ma tran he so tu do')
    % initVar=input('nhap vecto lap ban dau')
    % soLanLap=input('nhap so lan lap')
    % key=input('ban chon chuan nao, chon "1" neu la chuan 1 và "0" neu la chuan vo cung')
    %% kiem tra input co thoa dieu kien hay khong
    M=size(heSoTuDo,1)
    if initVar==0
        N=M
    else
        N=size(initVar,1)
    end
    [m,n]=size(heSo)
    if m==M && m==N
        fprintf('he phuong trinh hop le')
    else 
        fprintf('he phuong trinh khong hop le')
        return
    end
    %% sap xep lai cac hang de thoa dieu kien là chuan cua no phai nho hon 1
    for i=1:n
        b=heSo(:,i);
        [j,x]=max(abs(b));
        %%% code hoan doi vi tri
        c=heSo(x,:);
        heSo(x,:)=heSo(i,:);
        heSo(i,:)=c;
    end
    %% code chuyen hang ma tran ve dang lap
    for i=1:m 
        heSoTuDo(i,1)=heSoTuDo(i,1)/heSo(i,i);
        heSo(i,:)=(-1)*heSo(i,:)/heSo(i,i);
        heSo(i,i)=0;
    end 
    %% neu khong nhap vecto ban dau se lay ma tran don vi lam x chay ban dau
    
    %% tinh chuan T theo input ban dau
    g=zeros(1,m);
    tong=0;
    if key==0
        heSo=heSo;
    else
        heSo=heSo';
    end
    for i=1:m 
        for v=1:n
            tong=tong+abs(heSo(i,v));
        end
        g(1,i)=tong;
        tong=0;
    end
    t=max(g) % day la bien luu chuan T
    %% bat dau cho chay vong lap
    for i=1:soLanLap
       fprintf('lan lap thu %d \n',i)
        for row=1:m
            initVar(row)=heSo(row,:)*initVar+heSoTuDo(row)
        end
        if i==1 
            f=max(abs((heSoTuDo-initVar)))*(t.^soLanLap/(1-t));
            fprintf('sai so tien nghiem cua bai la \n')
            disp(f)
         end
    end
    hau=max(abs((x-initVar)))*(t/(1-t));
    fprintf('sai so hau nghiem cua bai la \n' )
    disp(hau)
    end
    
     
        