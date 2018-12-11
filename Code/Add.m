function [ ST,VM ] = Add(ST,nN,VM,t)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
ST(nN)=1;
for i=1:10
   if VM.VMfun(nN,i)~=0
       VM.VMflag(nN,i)=1;
       VM.VMexp(nN,i)=5+t;
   end
end
end

