$Name <FILENAME>

! Obj_Source
;Project created by:
;Joao Rodrigues SLAC
;joaoprod@slac.staford.edu
;
;Project reviewed by:
;
;Project tested by:
;
;
;
;History of change:

#Include <func06.fps>

! Id_Pluto_Double[D45]:0=000000000010


! I0.0=HVTurbo                          ;HEX Vacuum Gauge for interlock safety VHX-UTT-GCC-01
! I0.1=HVInterlock                      ;HEX Turbo Vac VHX-UTT-GCC-00
! I0.2=MainChamber                      ;Main Chamber redundant seal VCR-UTT-GCC-02
! I0.3=CVTurbo                          ;Cryostat Turbo Vac VCR-UTT-GCC-01
! I0.4=CVInterlock                      ;Cryostat Vacuum Gauge for interlock safety VCR-UTT-GCC-00
! I0.6=HVTurboSpeed                     ;HEX Vacuum Turbo speed VHX-UTT-PCT-01
! I0.7=CVTurboSpeed                     ;Cryostat Vacuum Turbo speed VCR-UTT-PCT-00
! Q0.0=CVStat                           ;Cryostat Vacuum Status PRT-UTT-PLC-03/I6
! Q0.1=HVStat                           ;HEX-Can Vacuum Status PRT-UTT-PLC-03/I5
! Q0.2=MainVcrVcc                       ;Cryostat VCR-UTT-VCC-00
! Q0.3=MainVhxVcc                       ;HEX-Can VHX-UTT-VCC-01

! Pgm_Pluto:0
! Instruction_Set_3
! Ext_comm:0=Device 0,Packet 0
! Ext_comm:1=Device 0,Packet 1
;VCR-UTT-PLC-00
;
;Cryo Vaccum PLC

! I0.0,Analog,10V
! I0.1,Analog,10V
! I0.2,Analog,10V
! I0.3,Analog,10V
! I0.4,Analog,10V
! I0.6,Analog,10V
! I0.7,Analog,10V
! I0.30,A_Pulse,Non_Inv
! I0.31,A_Pulse,Non_Inv
! I0.32,B_Pulse,Non_Inv
! I0.33,B_Pulse,Non_Inv
! I0.34,C_Pulse,Non_Inv
! I0.35,A_Pulse,Non_Inv
! I0.36,A_Pulse,Non_Inv
! I0.37,B_Pulse,Non_Inv
! I0.40,B_Pulse,Non_Inv
! Q0.10,A_Pulse
! Q0.11,B_Pulse
! Q0.12,C_Pulse
! Q0.20,Static
! Q0.21,Static
! Q0.22,Static
! Q0.23,Static

! I0.30=MainVcrVgcOpen                  ;CVR-UTT-VGC-00 Open
! I0.31=MainVcrVgcClose                 ;CVR-UTT-VGC-00 Close
! I0.32=MainVhxVgcOpen                  ;VHX-UTT-VCC-01 Open
! I0.33=MainVhxVgcClose                 ;VHX-UTT-VCC-01 Close
! I0.34=MKS925                          ;Roughing Pump
! I0.35=CV01                            ;VCR-UTT-GCC-00 Relay 1 (<0.1 Torr NO) and VCR-UTT-GCC-01 Relays 1 (<0.001 Torr NO)
! I0.36=CV0001                          ;VCR-UTT-GCC-00 Relay 2 (<0.001 Torr NO)
! I0.37=HV01                            ;VHX-UTT-GCC-00 Relay 1 (<0.1 Torr NO) and VHX-UTT-GCC-01 Relays 1 (<0.001 Torr NO)
! I0.40=HV0001                          ;VHX-UTT-GCC-00 Relay 2 (<0.001 Torr NO)
! Q0.4=VcrPumpPerm                      ;Cryo Turbo Pump Permit VCR-UTT-PCT-00/J1-3
! Q0.5=VhxPumpPerm                      ;HEX-Can Turbo Pump Permit VHX-UTT-PCT-01/J1-3
! Q0.10=APower                          ;VCR-UTT-VCC-00
! Q0.11=BPower                          ;VHX-UTT-VGC-00
! Q0.12=CPower                          ;roufhing pump contact
! Q0.20=VcrVcc01                        ;VCR-UTT-VCC-01
! Q0.21=VcrVcc02                        ;VCR-UTT-VCC-02
! Q0.22=VcrVcc03                        ;VCR-UTT-VCC-03
! Q0.23=VcrVcc04                        ;VCR-UTT-VCC-04
! M0.0=VcrVcc01Open                     ;
! M0.1=VcrVcc01Close                    ;
! M0.2=VcrVcc02Open                     ;
! M0.3=VcrVcc02Close                    ;
! M0.4=VcrVcc03Open                     ;
! M0.5=VcrVcc03Close                    ;
! M0.6=VcrVcc04Open                     ;
! M0.7=VcrVcc04Close                    ;
! M0.10=HVTurboValid                    ;
! M0.11=HVInterlockValid                ;
! M0.12=MainChamberValid                ;
! M0.13=CVTurboValid                    ;
! M0.14=CVInterlockValid                ;
! M0.15=HVInterlockHigh                 ;
! M0.16=CVInterlockHigh                 ;
! M0.17=HVInterlockHighFilter           ;
! M0.20=CVInterlockHighFilter           ;
! M0.21=HVInterlockHighLatchStatus      ;
! M0.22=CVInterlockHighLatchStatus      ;
! M0.23=HVStatLatchReset                ;
! M0.24=CVStatLatchReset                ;
! M0.25=CVStatkBlock                    ;
! M0.26=HVStatBlock                     ;
! M0.30=HVTurboSpeedValid               ;
! M0.31=CVTurboSpeedValid               ;
! M0.32=HVTurboPumpON                   ;
! M0.33=HVTurboPumpOFF                  ;
! M0.34=CVTurboPumpON                   ;
! M0.35=CVTurboPumpOFF                  ;
! M0.40=OpenMainVcrVcc                  ;
! M0.41=CloseMainVcrVcc                 ;
! M0.42=MainVcrVccAlowedOpen            ;
! M0.43=MainVcrVccAllowedOpenLatch      ;
! M0.44=MainVcrVccAllowedOpenLatchStatus;
! M0.45=MainVcrVccAllowedOpenLatchReset ;
! M0.46=MainVcrVccForcedClose           ;
! M0.47=MainVcrVccNotForcedCloseLatch   ;
! M0.48=MainVcrVccNotForcedCloseLatchStatus;
! M0.49=MainVcrVccNotForcedCloseReset   ;
! M0.50=VcrPumpPermLatchStatus          ;
! M0.51=VcrPumpPermReset                ;
! M0.52=VcrPumpPermBlock                ;
! M0.60=OpenMainVhxVcc                  ;
! M0.61=CloseMainVhxVcc                 ;
! M0.62=MainVhxVccAlowedOpen            ;
! M0.63=MainVhxVccAllowedOpenLatch      ;
! M0.64=MainVhxVccAllowedOpenLatchStatus;
! M0.65=MainVhxVccAllowedOpenLatchReset ;
! M0.66=MainVhxVccForcedClose           ;
! M0.67=MainVhxVccNotForcedCloseLatch   ;
! M0.68=MainVhxVccNotForcedCloseLatchStatus;
! M0.69=MainVhxVccNotForcedCloseReset   ;
! M0.70=VhxPumpPermLatchStatus          ;
! M0.71=VhxPumpPermReset                ;
! M0.72=VhxPumpPermBlock                ;
! M0.100=ToGate0                        ;
! M0.101=ToGate1                        ;
! M0.102=ToGate2                        ;
! M0.103=ToGate3                        ;
! M0.104=ToGate4                        ;
! M0.105=ToGate5                        ;
! M0.106=ToGate6                        ;
! M0.107=ToGate7                        ;
! M0.108=ToGate8                        ;
! M0.109=ToGate9                        ;
! M0.110=ToGate10                       ;
! M0.111=ToGate11                       ;
! M0.112=ToGate12                       ;
! M0.113=ToGate13                       ;
! M0.114=ToGate14                       ;
! M0.115=ToGate15                       ;
! M0.116=ToGate16                       ;
! M0.117=ToGate17                       ;
! M0.118=ToGate18                       ;
! M0.119=ToGate19                       ;
! R0.0=HVInterlockVoltage               ;
! R0.1=HVInterlockPressure              ;
! R0.2=HVTurboVoltage                   ;
! R0.3=HVTurboPressure                  ;
! R0.4=MainChamberVoltage               ;
! R0.5=MainChamberPressure              ;
! R0.6=CVTurboVoltage                   ;
! R0.7=CVTurboPressure                  ;
! R0.8=CVInterlockVoltage               ;
! R0.9=CVInterlockPressure              ;
! R0.10=e0                              ;
! R0.11=e1                              ;
! R0.12=exp                             ;
! R0.13=mant                            ;
! R0.14=m0                              ;
! R0.15=m1                              ;
! R0.16=e00                             ;
! R0.17=e11                             ;
! R0.18=t0                              ;
! R0.20=HVPressureDiff                  ;
! R0.21=CVPressureDiff                  ;
! R0.30=HVTurboPumpVoltage              ;
! R0.31=HVTurboPumpSpeed                ;
! R0.32=CVTurboPumpVoltage              ;
! R0.33=CVTurboPumpSpeed                ;
! DR0.22=ap0                            ;
! DR0.36=apt1                           ;
! DR0.38=apt2                           ;
! DR0.40=apt22                          ;
! DR0.42=apt3                           ;
! DR0.44=apt33                          ;
! DR0.46=apt333                         ;
! DR0.48=final0                         ;
! DR0.50=final1                         ;
! DR0.52=final2                         ;
! DR0.54=final3                         ;
! DR0.62=ln                             ;
! DR0.64=ln0                            ;
! DR0.66=ln1                            ;
! DR0.68=ln11                           ;
! DR0.70=ln2                            ;
! DR0.72=ln22                           ;
! DR0.74=ln111                          ;


S0.0_0=Logic
HVInterlockValid=ReadVoltage(1,0,10000,HVInterlockVoltage,HVInterlockPressure)
;Vaccum PLC outputs routed to Master PLC: PRT-UTT-PLC-03
;
;Heat-Exchanger related
HVInterlockHigh=/HV0001
HVInterlockHighFilter=Upcount(P(SM_1Hz),/HVInterlockHigh,10)
HVStat=StartT(/HVInterlockHighFilter*HVInterlockValid*/HVStatBlock,HVStatLatchReset,1,HVInterlockHighLatchStatus)
CVInterlockValid=ReadVoltage(4,0,10000,CVInterlockVoltage,CVInterlockPressure)
;Vaccum PLC outputs routed to Master PLC: PRT-UTT-PLC-03
;
;Cryostat related
;
CVInterlockHigh=/CV0001
CVInterlockHighFilter=Upcount(P(SM_1Hz),/CVInterlockHigh,10)
CVStat=StartT(/CVInterlockHighFilter*CVInterlockValid*/CVStatkBlock,CVStatLatchReset,1,CVInterlockHighLatchStatus)
HVTurboSpeedValid=ReadVoltage(6,0,10000,HVTurboPumpVoltage,HVTurboPumpSpeed)
;-------------------------------------------------------------------------------------------------------------------------------------------------
;
;-------------------------------------------------------------------------------------------------------------------------------------------------
;
;Heat-Exchanger Valve Control
;
HVTurboPumpOFF=(HVTurboPumpSpeed<1000)*HVTurboSpeedValid
HVTurboPumpON=(HVTurboPumpSpeed>5000)*HVTurboSpeedValid
HVTurboValid=ReadVoltage(0,0,10000,HVTurboVoltage,HVTurboPressure)
R(MainVhxVcc):MainVhxVccForcedClose=HVTurboPumpON*/MKS925
;Close
MainVhxVccNotForcedCloseLatch=StartT(/MainVhxVccForcedClose,MainVhxVccNotForcedCloseReset,1,MainVhxVccNotForcedCloseLatchStatus)
;Close
R(MainVhxVcc)=CloseMainVhxVcc
;Close
(HVPressureDiff=HVTurboPressure-HVInterlockPressure)=(HVInterlockPressure<=HVTurboPressure)
;OPEN
(HVPressureDiff=HVInterlockPressure-HVTurboPressure)=(HVInterlockPressure>HVTurboPressure)
MainVhxVccAlowedOpen=(HVTurboPumpOFF*(HVPressureDiff<=220)+HVTurboPumpON*HV01)*HVInterlockValid*HVTurboValid
MainVhxVccAllowedOpenLatch=StartT(MainVhxVccAlowedOpen,MainVhxVccAllowedOpenLatchReset,1,MainVhxVccAllowedOpenLatchStatus)
S(MainVhxVcc)=MainVhxVccNotForcedCloseLatch*/CloseMainVhxVcc*OpenMainVhxVcc*MainVhxVccAllowedOpenLatch
VhxPumpPerm=StartT((HVTurboPressure<200)*HVTurboValid*(/HVTurboPumpON+MKS925)*/VhxPumpPermBlock,VhxPumpPermReset,1,VhxPumpPermLatchStatus)
;
;Heat-Exchanger Turbo Pump Control
;
CVTurboSpeedValid=ReadVoltage(7,0,10000,CVTurboPumpVoltage,CVTurboPumpSpeed)
;-------------------------------------------------------------------------------------------------------------------------------------------------
;
;-------------------------------------------------------------------------------------------------------------------------------------------------
;
;Cryostat Valve Control
;
CVTurboPumpOFF=(CVTurboPumpSpeed<1000)*CVTurboSpeedValid
CVTurboPumpON=(CVTurboPumpSpeed>5000)*CVTurboSpeedValid
CVTurboValid=ReadVoltage(3,0,10000,CVTurboVoltage,CVTurboPressure)
R(MainVcrVcc):MainVcrVccForcedClose=CVTurboPumpON*/MKS925
;Close
MainVcrVccNotForcedCloseLatch=StartT(/MainVcrVccForcedClose,MainVcrVccNotForcedCloseReset,1,MainVcrVccNotForcedCloseLatchStatus)
;Close
R(MainVcrVcc)=CloseMainVcrVcc
;Close
(CVPressureDiff=CVTurboPressure-CVInterlockPressure)=(CVInterlockPressure<=CVTurboPressure)
;OPEN
(CVPressureDiff=CVInterlockPressure-CVTurboPressure)=(CVInterlockPressure>CVTurboPressure)
MainVcrVccAlowedOpen=(CVTurboPumpOFF*(CVPressureDiff<=220)+CVTurboPumpON*CV01)*CVInterlockValid*CVTurboValid
MainVcrVccAllowedOpenLatch=StartT(MainVcrVccAlowedOpen,MainVcrVccAllowedOpenLatchReset,1,MainVcrVccAllowedOpenLatchStatus)
S(MainVcrVcc)=MainVcrVccNotForcedCloseLatch*/CloseMainVcrVcc*OpenMainVcrVcc*MainVcrVccAllowedOpenLatch
VcrPumpPerm=StartT((CVTurboPressure<200)*CVTurboValid*(/CVTurboPumpON+MKS925)*/VcrPumpPermBlock,VcrPumpPermReset,1,VcrPumpPermLatchStatus)
;
;Cryor Turbo Pump Control
;
MainChamberValid=ReadVoltage(2,0,10000,MainChamberVoltage,MainChamberPressure)
;-------------------------------------------------------------------------------------------------------------------------------------------------
;
;-------------------------------------------------------------------------------------------------------------------------------------------------
;
;No logic
;
;Read Main chamber Redundant seal gauge
;
;
R(VcrVcc01)=VcrVcc01Close
;
;VCR-UTT-VCC-(00-04) Close and open commands
;
S(VcrVcc01)=VcrVcc01Open*/VcrVcc01Close
R(VcrVcc02)=VcrVcc02Close
S(VcrVcc02)=VcrVcc02Open*/VcrVcc02Close
R(VcrVcc03)=VcrVcc03Close
S(VcrVcc03)=VcrVcc03Open*/VcrVcc03Close
R(VcrVcc04)=VcrVcc04Close
S(VcrVcc04)=VcrVcc04Open*/VcrVcc04Close
APower:BPower:CPower
;
;Power Outputs
;

S0.1_0=Communication
HVStatLatchReset=Ext_Sig(0,0)
;--------------------------
;
;--------------------------
;
;Inputs from CSS
;
;
;Vaccum PLC outputs routed to Master PLC: PRT-UTT-PLC-03 resets
;
CVStatLatchReset=Ext_Sig(1,0)
CloseMainVhxVcc=Ext_Sig(2,0)
;Valve control
OpenMainVhxVcc=Ext_Sig(3,0)
MainVhxVccNotForcedCloseReset=Ext_Sig(4,0)
MainVhxVccAllowedOpenLatchReset=Ext_Sig(5,0)
CloseMainVcrVcc=Ext_Sig(6,0)
OpenMainVcrVcc=Ext_Sig(7,0)
MainVcrVccNotForcedCloseReset=Ext_Sig(8,0)
MainVcrVccAllowedOpenLatchReset=Ext_Sig(9,0)
VhxPumpPermReset=Ext_Sig(10,0)
VcrPumpPermReset=Ext_Sig(11,0)
VcrVcc01Open=Ext_Sig(12,0)
VcrVcc01Close=Ext_Sig(13,0)
VcrVcc02Open=Ext_Sig(14,0)
VcrVcc02Close=Ext_Sig(15,0)
VcrVcc03Open=Ext_Sig(16,0)
VcrVcc03Close=Ext_Sig(17,0)
VcrVcc04Open=Ext_Sig(18,0)
VcrVcc04Close=Ext_Sig(19,0)
HVStatBlock=Ext_Sig(20,0)
CVStatkBlock=Ext_Sig(21,0)
VhxPumpPermBlock=Ext_Sig(22,0)
VcrPumpPermBlock=Ext_Sig(23,0)
ToGate1=ToGateway_User_A(SM_10Hz,2,HVInterlockVoltage,HVInterlockPressure)
;--------------------------------------------------------------------------------------------------------------------------------------------------
;
;--------------------------------------------------------------------------------------------------------------------------------------------------
;
;Gauges readouts
;
ToGate2=ToGateway_User_A(P(/ToGate1),1,HVTurboVoltage,HVTurboPressure)
ToGate3=ToGateway_User_A(P(/ToGate2),3,MainChamberVoltage,MainChamberPressure)
ToGate4=ToGateway_User_A(P(/togate3),4,CVTurboVoltage,CVTurboPressure)
ToGate5=ToGateway_User_A(P(/togate4),5,CVInterlockVoltage,CVInterlockPressure)
ToGate6=ToGateway_User_A(P(/ToGate5),6,HVPressureDiff,CVPressureDiff)
;--------------------------------------------------------------------------------------------------------------------------------------------------
;
;--------------------------------------------------------------------------------------------------------------------------------------------------
;
;Preasure Difference Calculations
;
ToGate7=ToGateway_User_A(P(/ToGate6),7,HVTurboPumpVoltage,HVTurboPumpSpeed)
;--------------------------------------------------------------------------------------------------------------------------------------------------
;
;--------------------------------------------------------------------------------------------------------------------------------------------------
;
;Turbo pump speed readout
;
ToGate8=ToGateway_User_A(P(/togate7),8,CVTurboPumpVoltage,CVTurboPumpSpeed)
ToGate9=ToGateway_User_B(P(/ToGate8),9,HVTurboValid,HVInterlockValid,MainChamberValid,CVTurboValid,CVInterlockValid,HVTurboSpeedValid,CVTurboSpeedValid,0,0)
;--------------------------------------------------------------------------------------------------------------------------------------------------
;
;--------------------------------------------------------------------------------------------------------------------------------------------------
;
;Analog Readout Valid
;
;
ToGate10=ToGateway_User_B(P(/ToGate9),10,MainVhxVcc,CloseMainVhxVcc,OpenMainVhxVcc,MainVhxVccNotForcedCloseLatch,MainVhxVccNotForcedCloseLatchStatus,MainVhxVccNotForcedCloseReset,MainVhxVccAllowedOpenLatchStatus,MainVhxVccAllowedOpenLatchReset,0)
ToGate11=ToGateway_User_B(P(/ToGate10),11,MainVcrVcc,CloseMainVcrVcc,OpenMainVcrVcc,MainVcrVccNotForcedCloseLatch,MainVcrVccNotForcedCloseLatchStatus,MainVcrVccNotForcedCloseReset,MainVcrVccAllowedOpenLatchStatus,MainVcrVccAllowedOpenLatchReset,0)
ToGate12=ToGateway_User_B(P(/ToGate11),12,VhxPumpPerm,VhxPumpPermLatchStatus,VhxPumpPermReset,VcrPumpPerm,VcrPumpPermLatchStatus,VcrPumpPermReset,MKS925,0,0)
ToGate13=ToGateway_User_B(P(/ToGate12),13,VcrVcc01,VcrVcc01Open,VcrVcc01Close,VcrVcc02,VcrVcc02Open,VcrVcc02Close,0,0,0)
ToGate14=ToGateway_User_B(P(/ToGate13),14,VcrVcc03,VcrVcc03Open,VcrVcc03Close,VcrVcc04,VcrVcc04Open,VcrVcc04Close,0,0,0)
ToGate15=ToGateway_User_B(P(/ToGate14),15,HVStat,HVInterlockHighLatchStatus,HVStatLatchReset,CVStat,CVInterlockHighLatchStatus,CVStatLatchReset,HVInterlockHigh,CVInterlockHigh,0)
;Vaccum PLC outputs routed to Master PLC Logic
;
;
ToGate16=ToGateway_User_B(P(/ToGate15),16,MainVcrVgcOpen,MainVcrVgcClose,MainVhxVgcOpen,MainVhxVgcClose,MainVcrVccAllowedOpenLatch,MainVhxVccAllowedOpenLatch,0,0,0)
;\Main Vaves Monitor
ToGate17=ToGateway_User_B(P(/ToGate16),17,APower,BPower,CPower,HVTurboPumpON,HVTurboPumpOFF,CVTurboPumpON,CVTurboPumpOFF,0,0)
;\Main Vaves Monitor
ToGate18=ToGateway_User_B(P(/ToGate17),18,HVStatBlock,CVStatkBlock,VhxPumpPermBlock,VcrPumpPermBlock,CV01,CV0001,HV01,HV0001,0)
;\Main Vaves Monitor
