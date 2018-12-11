clear all
Cap=0;
ChainCnt=1;
FunCnt=1;
NodeNum=14;
% PLink=0.5; %%Probability of connet to node
FunNum=10;
%PAssign=0.2; %%Probability to assign functons to nodes 
Umax=ones(1,NodeNum); %% Maximum capacity of each nodes
Uidl=ones(1,NodeNum)*0.5; %%Defult capacity of each nodes
pt=rand(1,NodeNum); %%proccessing time of each functions
IDLtime=3; %%Maximum amount of time the node can stay IDLE
offtime=3; %%Maximum amiunt of time a VNF can wait in an OFF PM.
VMcap=10; %%Capacity of each VM instance
VMNum=10; %%Number of VMs in each node
% ChainNum=5; %%Number of chains
T=55; %%Time of simulation
Totalcost=0;
ldlmax=5;
idl_time=zeros(NodeNum);
mincap=0;
Ec=0;
NumFlow=0;
boot=5;
% U=zeros(NodeNum,FunNum);
%% VM
% for i=1:NodeNum
%     for j=1:VMNum     
        VM.VMflag=zeros(NodeNum,VMNum); %%Shows whether the VM is ON or OFF
        VM.VMfun(NodeNum,VMNum)=0;  %%Presents the network function running in the VM
        VM.VMexp(NodeNum,VMNum)=0;  %%Present the termination time of the VM
        VM.VMwait(NodeNum,VMNum)=0; %%Shows the waiting time
        VM.VMflow(NodeNum,VMNum)=0; %%Shows number of flows are sharing that VNF
%     end
% end
%% Service chain
ServiceChain.source=0;
ServiceChain.chain=0;
ServiceChain.destination=0;
ServiceChain.FlowLen=0;
ServiceChain.FlowNum=0;
%% ChainTime
ChainTime.startTime=0; %%Hold start time of each VNF of the service chain
ChainTime.pTime=0; %%Proccessing time of each VNF of service chain
ChainTime.preSource=0; %%Node where the previous VNF of the service chain was placed
ChainTime.chainDest=0; %%Destination of the flow 
ChainTime.hop=0; %%end-to-end number of hop
ChainTime.endTime=0; %%Terminal time of the flow 
%% currLnp
currLnp.chainNum=0; %%Shows which service chain the VNF belongs to 
currLnp.currSource=0; %%shows source of VNF
currLnp.currVNF=0; %%Shows the VNF name
currLnp.currDest=0; %%shows destination of VNF
currLnp.currFLOWlen=0; %%Shows the flow length
currLnp.FLOWno=0; %%Shows the flow number
currLnp.ETime=0; %%Shows terminal time of the flow
%% generate NSFNET network
A=Generat_Network();
%% Assign Functions to nodes
%%B=zeros(NodeNum,FunNum);
B=AssignFunToNodes(FunNum,NodeNum);
%% Spanning Tree(ST)
D=Bellman_Ford(A,NodeNum);
ST=[0 0 0 0 0 0 0 0 0 0 0 0 0 0];
%% 
Cost=zeros(1,T);
figure;
xlabel('t')
ylabel('Total energy consumption Cost')
hold on;
for t=1:T
    ServiceChain=ServiceChainIP(ServiceChain,t);
    ChainTime=SetChainTime(currLnp,ServiceChain,ChainTime,FunCnt,ChainCnt,t);
    [currLnp,FunCnt,ChainCnt]=CurrVNFinput(currLnp,ServiceChain,ChainTime,FunCnt,ChainCnt,t);
    if currLnp.chainNum~=0
    [ ST,VM,ChainTime ]=Placement(currLnp,ChainTime,NodeNum,A,B,ST,VM,D,boot,t);
    end
    for i=1:NodeNum
        for k=1:10
            if t>VM.VMexp(i,k)
                [VM]=Release(VM,i,k);
            end
        end
        if NnisOnST(i,ST)==1 && Uass(i,VM)==0
            idl_time(i)=idl_time(i)+1;
            if idl_time(i)>=ldlmax
                idl_time(i)=0;
                [ST]=Delete(ST,i);
            end
        end

    end
      VM=updataVM(VM);
      for i=1:14
          if NnisOnST(i,ST)==1 && Uass(i,VM)==0
                  U_idle=5;
           else
                  U_idle=0;
           end
          for j=1:10
              Cap=Cap+(2*VM.VMflag(i,j));
          end
          Cost(1,t)= Cost(1,t)+5*((U_idle+Cap)/5);
      end
      plot( Cost);
      Cap=0;
      drawnow;
%         pause(1);
end

