function [ D ] = Bellman_Ford(G,Nv)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
D=inf(Nv,Nv);
index=1;
b=1;
Element=zeros(1,10000);
for i=1:Nv
    for j=1:Nv
        if D(i,j)>G(i,j)
            D(i,j)=G(i,j);
            if G(i,j)~=0
                Element(1,index)=j;
                index=index+1;
            end
        end
    end
        while(b<index)
            a=Element(1,b);
            b=b+1;
            for k=1:Nv
                if D(i,a)+G(a,k) < D(i,k)
                    D(i,k)=D(i,a)+G(a,k);
                    Element(1,index)=k;
                    index=index+1;
                end
            end
        end
end

end

