function [ Index,Cnt] =nodeWithfun(B,fun)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
[Row,Colomn]=size(B);
Cnt=14;
Index=zeros(1,Row);
for i=1:Row
    for j=1:Colomn
        if B(i,j)==1 && j==fun
            Index(1,i)=i;
%             Cnt=Cnt+1;
        end
    end
end

end

