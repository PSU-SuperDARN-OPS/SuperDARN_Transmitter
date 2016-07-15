6_32 = 0.1065; // drill tap diameter
T_PLATE = .25;
CONTROL_OFFSET_X = .15;
CONTROL_OFFSET_Y = .0;

module hole(x, y, height, d) {
    translate([x, y, height/2])
        cylinder(h=2 * height,d=d,center=true,$fn=50);
}
difference() {
    linear_extrude(height = T_PLATE)
        square([2.7, 3.2], center = true);
    union() {
        
        // mounting holes for agc
        hole(-1.0125, 1.275, T_PLATE, 6_32);
        hole(-1.0125, -1.275, T_PLATE, 6_32);
        hole(+1.0125, 1.275, T_PLATE, 6_32);
        hole(+1.0125, -1.275, T_PLATE, 6_32);
        // exiting holes on plate
        translate([CONTROL_OFFSET_X, CONTROL_OFFSET_Y, 0]) {
            hole(-1, 1.4625, T_PLATE, 6_32);
            hole(+1, 1.4625, T_PLATE, 6_32);
            hole(+1, -1.4625, T_PLATE, 6_32);
            hole(-1, -1.4625, T_PLATE, 6_32);
        }
        
        // cutout unused space in middle
        translate([0,0,-.5])
            linear_extrude(height = 1)
                square([2.2, 2.2], center = true);

        };
        
        // todo: add cutout for regulator pins
}
   
//(11.725, 6.665), (13.725, 6.665), (11.725, 3.740), (13.725, 3.740)
