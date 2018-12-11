function [ A ] =Generat_Network(NodeNum,PLink)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%% NSFNET
A=[0 1 1 inf inf inf inf 1 inf inf inf inf inf inf;
   1 0 1 1 inf inf inf inf inf inf inf inf inf inf;
   1 1 0 inf inf inf 1 inf inf inf inf inf inf inf;
   inf 1 inf 0 1 inf inf inf 1 inf inf inf inf inf;
   inf inf inf 1 0 1 1 inf inf inf inf inf inf inf;
   inf inf inf inf 1 0 inf 1 inf inf inf inf inf inf;
   inf inf 1 inf 1 inf 0 inf inf inf 1 1 inf inf;
   1 inf inf inf inf 1 inf 0 inf 1 inf inf inf inf;
   inf inf inf 1 inf inf inf inf 0 inf inf inf 1 1;
   inf inf inf inf inf inf inf 1 inf 0 1 inf inf 1;
   inf inf inf inf inf inf 1 inf inf 1 0 inf inf inf;
   inf inf inf inf inf inf 1 inf inf inf inf 0 1 inf;
   inf inf inf inf inf inf inf inf 1 inf inf 1 0 inf;
   inf inf inf inf inf inf inf inf 1 1 inf inf inf 0
   ];
%for i=1:NodeNum
 %   for j=i:NodeNum 
  %      if(i==j)
   %         A(i,i)=0;
    %    end
%        if(i<(NodeNum/2) && i~=j)
 %           A(i,j)=1;
  %          A(j,i)= A(i,j);
   %     end
    %    if (i~=j && i>=(NodeNum/2) && rand(1)<PLink)
%            A(i,j)=1;
 %           A(j,i)= A(i,j);
  %      end
   % end
%end    
end
%A=zeros(NodeNum);
%for i=1:NodeNum
%    for j=1:NodeNum
%        if rand(1,1)<P && i~=j
%            A(i,j)=1;
%        end
%    end
%end

%end

