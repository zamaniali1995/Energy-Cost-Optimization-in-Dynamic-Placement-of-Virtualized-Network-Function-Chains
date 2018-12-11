function [ ST,VM ] =RDFST(nodeNum,A,B,ST,VM,s,d,fun,D,boot,t)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[Index,IndexNum]=nodeWithfun(B,fun);
nN=0;
min_cap=1;
off_time=5;
% Index=[1 2 3 4 5 6 7 8 9 10 11 12 13 14];
% IndexNum=14;
Test=0;
%% Nodes
nodes.num=IndexNum;
nodes.CapAct=zeros(1,nodeNum);
nodes.sNode=Index;
nodes.spd=D;
nodes=assignPrioritytoNodes(nodes,VM,s,d,D);
% for i=1:nodeNum 
%     nN=nodes.sNode(1);
%     nN=ceil(rand*13);
    for i=1:14
        if nodes.sNode(i)==1
            nN=i;
        end
    end
    VM=Assign(ST,nN,VM,fun,boot);
    if (NnisOnST(nN,ST)==1)
%        break; 
    elseif Uass(nN,VM)>=min_cap
        [ ST,VM ]=Add(ST,nN,VM,t);
%         break;
    elseif maxVMwait(nN,VM)>=off_time
        Add(ST,nN,VM,t)
%         break;
    end
% end
% x=totalVMInstance(VM);
% y=x-1;
% while y<x
   % nodes_sorted=nestedSortStructure(nodes);
%     for i=1:index
%         if nodes_sorted(i).num<=0
%             
%         else
%             nN=node_sorted(i).num;
%             Assign(ST,nN,VM,fun,NumFlow,boot);
%             if n
%         end
        
%     end
% end
end

