FILENAME="couplermod"
echo "NOTE: set minimal header in kicad drill file"
sed -i '/G90/d' "$FILENAME".drl
sed -i '/G05/d' "$FILENAME".drl
sed -i '/T0/d' "$FILENAME".drl
touch fabdwg.txt
gerbmerge twolayer.cfg

