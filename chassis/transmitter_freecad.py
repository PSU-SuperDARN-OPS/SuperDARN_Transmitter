# python script to generate transmitter plate
# using freecad scripting
import sys
sys.path.append('/usr/lib/freecad')

from FreeCAD import Base
import Part
# units in inches..

#origin at lower left corner of plate
# |-----|
# |     |
# X-----|
IN = 25.4

PLATE_LENGTH = 21.25 * IN
PLATE_WIDTH = 7 * IN
PLATE_HEIGHT = .25 * IN

# hole diameter for tapping, in inches
DRILL_6D32 = 0.10650 * IN
DRILL_1D72 = 0.05950 * IN
DRILL_p25D20 = 0.20100 * IN


# holes... 
holes_1d72 = [(7.15, 2.145), (7.446, 2.145), (8.544, 2.145), (8.84, 2.145)]
holes_p25d20 = [(.625, .625), (.625, 5.625), (20.875, .625), (20.875, 5.625)]
holes_6d32 = [  (1.125, 5.025), (1.125, 0.275), (5.475, 5.025), (5.475, 0.275), \
                (6.305, 4.650), (6.305, 0.650), (9.125, 0.650), (9.125, 0.650), (6.505, 2.350), \
                (10.20, 0.200), (10.50, 2.650), (13.25, 2.650), (13.25, 0.200), \
                (11.725, 6.665), (13.725, 6.665), (11.725, 3.740), (13.725, 3.740), \
                (14.04, 2.01), (14.04, 0.4), (18.0, 2.01), (18.0, 0.4), \
                (17.90, 6.575), (17.90, 5.375), (20.575, 6.575), (20.575, 5.375)]

def drill_holes(plate, holes, drill):
    for hole in holes:
        hole_center = Base.Vector(hole[0] * IN, hole[1] * IN, 0)
        hole_radius = drill / 2.
        drill_hole = Part.makeCylinder(hole_radius, PLATE_HEIGHT, hole_center)
        plate = plate.cut(drill_hole)
    return plate

def main():
    # create plate
    plate = Part.makePlane(PLATE_LENGTH, PLATE_WIDTH)
    plate = plate.extrude(Base.Vector(0,0,PLATE_HEIGHT))

    # cut out holes
    plate = drill_holes(plate, holes_1d72, DRILL_1D72)
    plate = drill_holes(plate, holes_p25d20, DRILL_p25D20)
    plate = drill_holes(plate, holes_6d32, DRILL_6D32)

    # export STEP file
    plate.exportStep("klein_al_plate.stp")

if __name__ == '__main__':
    main()



