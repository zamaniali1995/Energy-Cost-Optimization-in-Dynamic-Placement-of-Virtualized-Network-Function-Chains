function [currLnp,FunCnt,ChainCnt] = CurrVNFinput(currLnp,ServiceChain,ChainTime,FunCnt,ChainCnt,t)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[~,ChainNum]=size(ServiceChain);

if ChainCnt<=ChainNum 
    if FunCnt<5
        currLnp.chainNum=ChainCnt; %%Shows which service chain the VNF belongs to 
        currLnp.currSource=ServiceChain(ChainCnt).source; %%shows source of VNF
        currLnp.currVNF=ServiceChain(ChainCnt).chain(FunCnt); %%Shows the VNF name
        currLnp.currDest=ServiceChain(ChainCnt).destination; %%shows destination of VNF
        currLnp.currFLOWlen=ServiceChain(ChainCnt).FlowLen; %%Shows the flow length
        currLnp.FLOWno=ServiceChain(ChainCnt).FlowNum; %%Shows the flow number
%         currLnp.ETime=ChainTime(ChainCnt).endTime; %%Shows terminal time of the flow
        FunCnt=FunCnt+1;
        if FunCnt==5
            ChainCnt=ChainCnt+1;
            FunCnt=1;
        end
    else
        ChainCnt=ChainCnt+1;
        FunCnt=1;
        currLnp.chainNum=ChainCnt; %%Shows which service chain the VNF belongs to 
        currLnp.currSource=ServiceChain(ChainCnt).source; %%shows source of VNF
        currLnp.currVNF=ServiceChain(ChainCnt).chain(FunCnt); %%Shows the VNF name
        currLnp.currDest=ServiceChain(ChainCnt).destination; %%shows destination of VNF
        currLnp.currFLOWlen=ServiceChain(ChainCnt).FlowLen; %%Shows the flow length
        currLnp.FLOWno=ServiceChain(ChainCnt).FlowNum; %%Shows the flow number
%         currLnp.ETime=ChainTime(ChainCnt).endTime; %%Shows terminal time of the flo
    end
else
    currLnp.chainNum=0; %%Shows which service chain the VNF belongs to 
    currLnp.currSource=0; %%shows source of VNF
    currLnp.currVNF=0; %%Shows the VNF name
    currLnp.currDest=0; %%shows destination of VNF
    currLnp.currFLOWlen=0; %%Shows the flow length
    currLnp.FLOWno=0; %%Shows the flow number
%         currLnp.ETime=ChainTime(ChainCnt).endTime; %%Shows terminal time of the flow
end

end

