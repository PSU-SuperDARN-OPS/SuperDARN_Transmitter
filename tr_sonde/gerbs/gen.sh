#!/bin/bash
mv tr-Inner1_Cu.gbr tr.g3l
mv tr-Inner2_Cu.gbr tr.g2l
mv tr-Edge_Cuts.gbr tr.gko
rm tr.zip
rm *NPTH*
zip tr.zip tr*
