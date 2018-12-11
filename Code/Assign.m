function [ VM ] = Assign(ST,nN,VM,fun,boot)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if ST(nN)==1
    for i=1:10
        if VM.VMflag(nN,i)==1 && VM.VMfun(nN,i)==0
            VM.VMfun(nN,i)=fun;
            break;
        elseif VM.VMflag(nN,i)==0 && VM.VMfun(nN,i)==0
            VM.VMfun(nN,i)=fun;
            VM.VMexp(nN,i)=boot;
            break;
        end
    end
else
    for i=1:10
        if  VM.VMfun(nN,i)==0
            VM.VMexp(nN,i)=boot;
            VM.VMfun(nN,i)=fun; 
            break;
        end
    end
% U(nN,fun)=1;
% VM.VMflag=zeros(NodeNum,VMNum); %%Shows whether the VM is ON or OFF
% VM.VMfun(NodeNum,VMNum)=0;  %%Presents the network function running in the VM
% VM.VMexp(NodeNum,VMNum)=0;  %%Present the termination time of the VM
% VM.VMwait(NodeNum,VMNum)=0; %%Shows the waiting time
% VM.VMflow(NodeNum,VMNum)=0; %%Shows number of flows are sharing that VNF
end

