<Qucs Schematic 0.0.17>
<Properties>
  <View=0,0,1096,1156,0.77175,0,19>
  <Grid=10,10,1>
  <DataSet=rxfe_bpf.dat>
  <DataDisplay=rxfe_bpf.dpl>
  <OpenDisplay=1>
  <Script=rxfe_bpf.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Eqn Eqn1 1 570 970 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "gain_phase=unwrap(angle(S[2,1]))" 1 "group_delay=-diff(gain_phase,2*pi*frequency)" 1 "dBS11=dB(S[1,1])" 1 "yes" 1>
  <Pac P1 1 380 640 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 380 670 0 0 0 0>
  <GND * 1 490 670 0 0 0 0>
  <GND * 1 630 670 0 0 0 0>
  <GND * 1 770 670 0 0 0 0>
  <Pac P2 1 880 640 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 880 670 0 0 0 0>
  <L L1 1 490 640 17 -26 0 1 "3.9 uH" 1 "" 0>
  <L L3 1 770 640 17 -26 0 1 "3.9uH" 1 "" 0>
  <L L2 1 630 640 17 -26 0 1 "1.2uH" 1 "" 0>
  <C C2 1 700 560 -27 10 0 0 "680pF" 1 "" 0 "neutral" 0>
  <C C1 1 560 560 -27 10 0 0 "680pF" 1 "" 0 "neutral" 0>
  <.SP SP1 1 250 970 0 72 0 0 "log" 1 "1 MHz" 1 "60 MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
</Components>
<Wires>
  <380 560 380 610 "" 0 0 0 "">
  <380 560 490 560 "" 0 0 0 "">
  <490 560 490 610 "" 0 0 0 "">
  <630 560 630 610 "" 0 0 0 "">
  <770 560 770 610 "" 0 0 0 "">
  <490 560 530 560 "" 0 0 0 "">
  <590 560 630 560 "" 0 0 0 "">
  <630 560 670 560 "" 0 0 0 "">
  <730 560 770 560 "" 0 0 0 "">
  <880 560 880 610 "" 0 0 0 "">
  <770 560 880 560 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
