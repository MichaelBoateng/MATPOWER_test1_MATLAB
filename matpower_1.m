%Michael Boateng
%Using MATPOWER

%%
%Power Grid Library: IEE case 14 
%AC-PF
%Runs a simple Newton's method power flow
runpf('case14');

%%
%Power Grid Library: BW case 33
%AC-OPF
define_constants; %pre-defined constants
mpc=loadcase('case33bw');
mpc.bus(2, PD)=5; %modifies power demand of the second bus to 30MW
runopf(mpc) %MATLAB MIPS used for AC OPF

%%
%Power Grid Library: Texas [case_ACTIVSg2000.m]
%DC-OPF

rundcopf('case_ACTIVSg2000') %MATLAB runs DC OPF

%%
%MATPOWER Wildfire Analysis of RTS_GLC [RTS_GLC_risk.m]
%Reliability Test System_Grid Modernization Lab Consortium

%Used a risk weight of 0.15 | Solve using AC-OPF
runpf('RTS_GMLC_risk.m');