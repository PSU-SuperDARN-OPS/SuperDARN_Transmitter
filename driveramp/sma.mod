PCBNEW-LibModule-V1  Tue 10 Dec 2013 09:41:44 PM AKST
# encoding utf-8
Units mm
$INDEX
sma
toroid
$EndINDEX
$MODULE sma
Po 0 0 0 15 52A56E7A 00000000 ~~
Li sma
Sc 0
AR 
Op 0 0 0
T0 -1.27 -7.62 1 1 0 0.15 N V 21 N "sma"
T1 -1.27 -8.89 1 1 0 0.15 N V 21 N "VAL**"
$PAD
Sh "1" R 5.1 2.4 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 0 0
$EndPAD
$PAD
Sh "2" R 5.1 2.4 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 0 -4.4
$EndPAD
$PAD
Sh "3" R 5.1 2.4 0 0 0
Dr 0 0 0
At SMD N 00888000
Ne 0 ""
Po 0 4.4
$EndPAD
$PAD
Sh "4" R 5.1 2.4 0 0 0
Dr 0 0 0
At SMD N 00440001
Ne 0 ""
Po 0 4.4
$EndPAD
$PAD
Sh "5" R 5.1 2.4 0 0 0
Dr 0 0 0
At SMD N 00440001
Ne 0 ""
Po 0 -4.4
$EndPAD
$EndMODULE sma
$MODULE toroid
Po 0 0 0 15 52A808DB 00000000 ~~
Li toroid
Sc 0
AR 
Op 0 0 0
T0 -1.27 -3.81 1 1 0 0.15 N V 21 N "toroid"
T1 -1.27 -5.08 1 1 0 0.15 N V 21 N "VAL**"
DS 0 -2.54 -13.97 -2.54 0.15 21
DS -13.97 -2.54 -13.97 2.54 0.15 21
DS -13.97 2.54 13.97 2.54 0.15 21
DS 13.97 2.54 13.97 -2.54 0.15 21
DS 13.97 -2.54 0 -2.54 0.15 21
$PAD
Sh "2" C 2.4 2.4 0 0 0
Dr 1.4 0 0
At STD N 00E0FFFF
Ne 0 ""
Po 5 0
$EndPAD
$PAD
Sh "1" C 2.4 2.4 0 0 0
Dr 1.4 0 0
At STD N 00E0FFFF
Ne 0 ""
Po -5 0
$EndPAD
$EndMODULE toroid
$EndLIBRARY
