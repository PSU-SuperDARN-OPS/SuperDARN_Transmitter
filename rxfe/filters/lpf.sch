<Qucs Schematic 0.0.17>
<Properties>
  <View=0,0,1096,966,0.735,0,0>
  <Grid=10,10,1>
  <DataSet=lpf.dat>
  <DataDisplay=lpf.dpl>
  <OpenDisplay=1>
  <Script=lpf.m>
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
  <Pac P1 1 370 680 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 370 710 0 0 0 0>
  <GND * 1 520 710 0 0 0 0>
  <GND * 1 660 710 0 0 0 0>
  <Pac P2 1 770 680 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 770 710 0 0 0 0>
  <.SP SP1 1 420 780 0 72 0 0 "log" 1 "700kHz" 1 "260MHz" 1 "200" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Eqn Eqn1 1 610 790 -28 15 0 0 "dBS21=dB(S[2,1])" 1 "dBS11=dB(S[1,1])" 1 "yes" 0>
  <L L2 1 630 600 -26 -44 0 0 "820 nH" 1 "" 0>
  <L L1 1 520 680 8 -26 0 1 "820 nH" 1 "" 0>
  <L L3 1 660 680 8 -26 0 1 "820 nH" 1 "" 0>
  <C C1 1 490 680 -8 46 0 1 "180 pF" 1 "" 0 "neutral" 0>
  <C C2 1 570 600 -26 10 0 0 "180 pF" 1 "" 0 "neutral" 0>
  <C C3 1 630 680 -8 46 0 1 "180 pF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <370 600 370 650 "" 0 0 0 "">
  <370 600 520 600 "" 0 0 0 "">
  <520 600 520 650 "" 0 0 0 "">
  <660 600 660 650 "" 0 0 0 "">
  <520 600 540 600 "" 0 0 0 "">
  <490 650 520 650 "" 0 0 0 "">
  <490 710 520 710 "" 0 0 0 "">
  <630 650 660 650 "" 0 0 0 "">
  <630 710 660 710 "" 0 0 0 "">
  <770 600 770 650 "" 0 0 0 "">
  <660 600 770 600 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 750 790 12 #000000 0 "Butterworth band-pass filter\n7MHz...26MHz, PI-type,\nimpedance matching 50 Ohm">
</Paintings>
