# python script to generate transmitter plate
# using freecad scripting
import sys
sys.path.append('/usr/lib/freecad')

from FreeCAD import Base
import Part
import pdb

XIDX = 0
YIDX = 1
ZIDX = 2

# units in inches..

#origin at lower left corner of plate
#        / height
# |-----|
# |     |width
# X-----|
#  length
IN = 25.4


PCB_WIDTH = 2.65 * IN
PCB_LEN = 4.26 * IN
PCB_HEIGHT = (.45 + .062) * IN
STANDOFF_SIZE = .25 * IN

WALL_THICKNESS = (1./4) * IN
WALL_DIAMETER = .5 * IN
FLOOR_DIAMETER = WALL_DIAMETER / 2.

SIDE_CLEARANCE = WALL_DIAMETER
BACK_CLEARANCE = 2 * WALL_DIAMETER
TOP_CLEARANCE = .25 * IN

BOX_HEIGHT = PCB_HEIGHT + 2 * WALL_THICKNESS + TOP_CLEARANCE
BOX_LENGTH = 6 * IN 
BOX_WIDTH = 3 * IN

# hole diameter for tapping, in inches
DRILL_6D32 = 0.10650 * IN # 6D32 for pcb mounting holes..
DRILL_4D40 = 0.08900 * IN # 4D40 for lid attachment

# mounting holes... 
# mounting hole locations, offset from PCB edge
holes_6d32 = [  (1.125, 5.025), (1.125, 0.275), (5.475, 5.025), (5.475, 0.275)]
holes_4d40 = [  (1.125, 5.025), (1.125, 0.275), (5.475, 5.025), (5.475, 0.275)]
def drill_holes(plate, holes, drill):
    for hole in holes:
        hole_center = Base.Vector(hole[0] * IN, hole[1] * IN, 0)
        hole_radius = drill / 2.
        drill_hole = Part.makeCylinder(hole_radius, PLATE_HEIGHT, hole_center)
        plate = plate.cut(drill_hole)
    return plate

def main():
    # create box base, extrude up

    box = Part.makeBox(BOX_LENGTH + 2 * WALL_THICKNESS, BOX_WIDTH + 2 * WALL_THICKNESS, BOX_HEIGHT + 2 * WALL_THICKNESS)
    box.translate(Base.Vector(-WALL_THICKNESS, -WALL_THICKNESS, - 2 * WALL_THICKNESS))

    pocket =  Part.makeBox(BOX_LENGTH, BOX_WIDTH, BOX_HEIGHT)
    wall_edges = []
    # fillet sides of pocket
    for edge in pocket.Edges:
        v1 = edge.Vertexes[0].Point
        v2 = edge.Vertexes[1].Point
        
        if v1[XIDX] == v2[XIDX] and v1[YIDX] == v2[YIDX]:
            wall_edges.append(edge)

    pocket = pocket.makeFillet(WALL_DIAMETER / 2., wall_edges)

    # fillet floor of pocket    
    floor_edges = []
    for edge in pocket.Edges:
        v1 = edge.Vertexes[0].Point
        v2 = edge.Vertexes[1].Point
    
        if (v1[ZIDX] == 0) and (v2[ZIDX] == 0):
            floor_edges.append(edge)
    
    pocket = pocket.makeFillet(FLOOR_DIAMETER / 2., floor_edges)
    
    box = box.cut(pocket)

    # drill hptr mounting holes
    #pocket = drill_holes(pocket, holes_6d32, DRILL_6D32)
    # drill lid mounting holes
    #pocket = drill_holes(pocket, holes_4d40, DRILL_4D40)

    # export STEP file
    box.exportStep("klein_al_hptr_box.stp")

if __name__ == '__main__':
    main()



