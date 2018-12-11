function [ MAX ] = maxVMwait(nN,VM)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Test=zeros(10);
for i=1:10
    Test(i)=VM.VMwait(nN,i);
end
MAX=max(Test);
end

