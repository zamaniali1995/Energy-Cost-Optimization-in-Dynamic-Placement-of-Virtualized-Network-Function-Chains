function [ ST,VM,ChainTime ] = Placement(currLnp,ChainTime,nodeNum,A,B,ST,VM,D,boot,t)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
s=currLnp.currSource;
d=currLnp.currDest;
nf=currLnp.currVNF;
[ST,VM]=RDFST(nodeNum,A,B,ST,VM,s,d,nf,D,boot,t);
% ChainTime=updateChainTime(ChainTime,currLnp,newNode);
end

