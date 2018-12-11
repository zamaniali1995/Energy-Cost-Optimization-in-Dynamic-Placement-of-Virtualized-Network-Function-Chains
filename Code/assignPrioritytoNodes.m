function [ nodes ] = assignPrioritytoNodes(nodes,VM,s,d,D)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
% nodes.sNode=[2 1 4 3 5 6 7 8 9 10 11 12 13 14];
a=1;
EmptyOnVM=0;
EmptyOffVM=0;
P=1;
% Test=0;
% ActiveNodes=zeros(nodes.num);
% AvailibleNodes=zeros(nodes.num);
Priority1=inf(1,nodes.num);
Priority2=inf(1,nodes.num);
Priority3=inf(1,nodes.num);
Priority4=inf(1,nodes.num);
for i=1:nodes.num
    for j=1:10
        if VM.VMflag(i,j)==1 && VM.VMfun(i,j)==0
            EmptyOnVM=EmptyOnVM+1; 
        end
        if VM.VMflag(i,j)==0 && VM.VMfun(i,j)~=0
            Priority3(1,i)=1; 
        end
        if VM.VMflag(i,j)==0 && VM.VMfun(i,j)==0
            EmptyOffVM=EmptyOffVM+1; 
        end
%         if VM.VMfun(nodes.sNode(i),j)==0;
%             AvailibleNodes(i)=1;
%         end
    end
    if EmptyOnVM~=0 && EmptyOnVM~=10
        Priority1(1,i)=1;
    end 
    if EmptyOnVM==10
        Priority2(1,i)=1;
    end
    if EmptyOffVM==10
        Priority4(1,i)=1;
    end
    EmptyOffVM=0;
    EmptyOnVM=0;
end
for i=1:nodes.num
    if Priority1(1,i)==1  
       Priority1(1,i)=D(s,i)+D(i,d);
    end
    if Priority2(1,i)==1  
       Priority2(1,i)=D(s,i)+D(i,d);
    end
    if Priority3(1,i)==1  
       Priority3(1,i)=D(s,i)+D(i,d);
    end
    if Priority4(1,i)==1  
       Priority4(1,i)=D(s,i)+D(i,d);
    end
end
%     if Priority1(i)==1  
%        Priority1(i)=D(s,i)+D(i,d);
%     else
%         for j=1:10
%             if VM.VMflag(i,j)==1
%                 Test=Test+1;
%             end
%         end
%         if Test>0
%            Priority2(1,i)=D(s,i)+D(i,d); 
%         else
%            Priority3(1,i)=D(s,i)+D(i,d);
%         end 
%     end
%     
% end
Test=0;
a=1;
while(a~=0)
    a=a-1;
    for i=1:nodes.num
        for j=1:nodes.num
            if Priority1(1,i)<=Priority1(1,j) && Priority1(1,i)~=inf
                Test=Test+1;
            end
        end
        if Test==(nodes.num)
            nodes.sNode(1,i)=P;
            P=P+1;
            Priority1(1,i)=inf;
        elseif Test~=0
            a=a+1;
        end
        Test=0;
    end
end
Test=0;
a=1;
while(a~=0)
    a=a-1;
    for i=1:nodes.num
        for j=1:nodes.num
            if Priority2(1,i)<=Priority2(1,j) && Priority2(1,i)~=inf 
                Test=Test+1;
            end
        end
        if Test==(nodes.num)
            nodes.sNode(1,i)=P;
            P=P+1;
            Priority2(1,i)=inf;
        elseif Test~=0
            a=a+1;
        end
        Test=0;
    end
end
Test=0;
a=1;
while(a~=0)
a=a-1;
    for i=1:nodes.num
        for j=1:nodes.num
            if Priority3(1,i)<=Priority3(1,j) && Priority3(1,i)~=inf
                Test=Test+1;
            end
        end
        if Test==(nodes.num)
            nodes.sNode(1,i)=P;
            P=P+1;
            Priority3(1,i)=inf;
            elseif Test~=0
            a=a+1;
        end
        Test=0;
    end
end
a=1;
while(a~=0)
    a=a-1;
    for i=1:nodes.num
        for j=1:nodes.num
            if Priority4(1,i)<=Priority4(1,j) && Priority4(1,i)~=inf
                Test=Test+1;
            end
        end
        if Test==(nodes.num)
            nodes.sNode(1,i)=P;
            P=P+1;
            Priority4(1,i)=inf;
        elseif Test~=0
            a=a+1;
        end
        Test=0;
    end
end
end


