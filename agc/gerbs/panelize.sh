# note: modify gerbmerge jobs file for kicad, see https://groups.yahoo.com/neo/groups/kicad-users/conversations/topics/13882
FILENAME="agc"
echo "NOTE: set minimal header in kicad drill file"
echo "NOTE: set keep zeros in kicad drill file"

touch fabdwg.txt
gerbmerge twolayer.cfg

