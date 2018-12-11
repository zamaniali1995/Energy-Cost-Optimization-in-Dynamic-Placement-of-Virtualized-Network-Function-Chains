function [ ChainTime ] = SetChainTime( currLnp,ServiceChain,ChainTime,FunCnt,ChainCnt,t )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[~,ChainNum]=size(ServiceChain);
if ChainCnt<=ChainNum 
    ChainTime(ChainCnt).startTime(FunCnt)=t; %%Hold start time of each VNF of the service chain
    ChainTime(ChainCnt).pTime(FunCnt)=3; %%Proccessing time of each VNF of service chain
    ChainTime(ChainCnt).preSource=ServiceChain(ChainCnt).source; %%Node where the previous VNF of the service chain was placed
    ChainTime(ChainCnt).chainDest=ServiceChain(ChainCnt).destination; %%Destination of the flow 
    ChainTime(ChainCnt).hop=3; %%end-to-end number of hop
    ChainTime(ChainCnt).endTime=10; %%Terminal time of the flow  
end
end

