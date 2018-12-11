function [ Test ] =Uass(nN,VM)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
Test=0;
for i=1:10
    if VM.VMfun(nN,i)~=0
        Test=Test+1;
    end
end

end

