function VM=updataVM(VM)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
for i=1:14
    for j=1:10
        if VM.VMflag(i,j)==1 && VM.VMfun(i,j)==0
            VM.VMwait(i,j)=VM.VMwait(i,j)+1;
        end
        if VM.VMwait(i,j)==5
            VM.VMflag(i,j)=0;
        end
%         if VM.VMflag(i,j)==1 && VM.VMfun(i,j)~=0
%             VM.VMexp(i,j)=VM.VMexp(i,j)+1;
%         end
%         if VM.VMexp(i,j)==10
%             VM.VMfun(i,j)=0;
%         end
    end
end

end

