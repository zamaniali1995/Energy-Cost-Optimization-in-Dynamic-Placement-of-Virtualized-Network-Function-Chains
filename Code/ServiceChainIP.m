function [ServiceChain] = ServiceChainIP(ServiceChain,t)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if t==1
    %% 1st Chains
    ServiceChain(1).source=1;
    ServiceChain(1).chain=[2 1 5 10];
    ServiceChain(1).destination=5;
    ServiceChain(1).FlowLen=10;
    ServiceChain(1).FlowNum=1; 
    
elseif t==8
    %% 2nd Chains
    ServiceChain(2).source=2;   
    ServiceChain(2).chain=[1 3 7 8];
    ServiceChain(2).destination=11;
    ServiceChain(2).FlowLen=20;
    ServiceChain(2).FlowNum=1;

elseif t==9
    %% 3rd Chains
    ServiceChain(3).source=12;
    ServiceChain(3).chain=[10 9 1 4];
    ServiceChain(3).destination=4;
    ServiceChain(3).FlowLen=30;
    ServiceChain(3).FlowNum=1; 
    elseif t==10
    %% 4th Chains
    ServiceChain(4).source=2;   
    ServiceChain(4).chain=[1 3 7 8];
    ServiceChain(4).destination=11;
    ServiceChain(4).FlowLen=20;
    ServiceChain(4).FlowNum=1;
    elseif t==15
    %% 5th Chains
    ServiceChain(5).source=2;   
    ServiceChain(5).chain=[1 3 7 8];
    ServiceChain(5).destination=11;
    ServiceChain(5).FlowLen=20;
    ServiceChain(5).FlowNum=1;
    elseif t==20
    %% 6th Chains
    ServiceChain(6).source=2;   
    ServiceChain(6).chain=[1 3 7 8];
    ServiceChain(6).destination=11;
    ServiceChain(6).FlowLen=20;
    ServiceChain(6).FlowNum=1;
    elseif t==21
    %% 7th Chains
    ServiceChain(7).source=9;   
    ServiceChain(7).chain=[9 3 7 8];
    ServiceChain(7).destination=4;
    ServiceChain(7).FlowLen=20;
    ServiceChain(7).FlowNum=1;
    elseif t==22
    %% 8th Chains
    ServiceChain(8).source=5;   
    ServiceChain(8).chain=[1 12 7 13];
    ServiceChain(8).destination=10;
    ServiceChain(8).FlowLen=20;
    ServiceChain(8).FlowNum=1;
    elseif t==24
    %% 9th Chains
    ServiceChain(9).source=10;   
    ServiceChain(9).chain=[1 8 10 2];
    ServiceChain(9).destination=11;
    ServiceChain(9).FlowLen=20;
    ServiceChain(9).FlowNum=1;
    elseif t==25
    %% 10th Chains
    ServiceChain(10).source=2;   
    ServiceChain(10).chain=[1 2 7 9];
    ServiceChain(10).destination=13;
    ServiceChain(10).FlowLen=20;
    ServiceChain(10).FlowNum=1;
    elseif t==27
    %% 11th Chains
    ServiceChain(11).source=14;   
    ServiceChain(11).chain=[1 8 7 10];
    ServiceChain(11).destination=11;
    ServiceChain(11).FlowLen=20;
    ServiceChain(11).FlowNum=1;
 end

end

