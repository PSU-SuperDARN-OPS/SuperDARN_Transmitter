#!/bin/bash
mv agc-Inner1_Cu.gbr agc.g3l
mv agc-Inner2_Cu.gbr agc.g2l
mv agc-Edge_Cuts.gbr agc.gko
rm agc.zip
zip agc.zip agc*
