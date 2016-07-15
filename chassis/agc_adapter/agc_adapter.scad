6_32 = 0.1065; // drill tap diameter
T_PLATE = .25;
 
module hole(x, y, height, d) {
    translate([x, y, height/2])
        cylinder(h=2 * height,d=d,center=true,$fn=50);
}
difference() {
    linear_extrude(height = T_PLATE)
        square([3.55, 2.95], center = true);
    union() {
        
        // mounting holes for agc
        hole(-1.0125, 1.275, T_PLATE, 6_32);
        hole(-1.0125, -1.275, T_PLATE, 6_32);
        hole(+1.0125, 1.275, T_PLATE, 6_32);
        hole(+1.0125, -1.275, T_PLATE, 6_32);
        // exiting holes on plate
        hole(-1.525, 1.225, T_PLATE, 6_32);
        hole(+1.525, 1.225, T_PLATE, 6_32);
        hole(+1.525, -1.225, T_PLATE, 6_32);
        hole(-1.225, -1.225, T_PLATE, 6_32);
        linear_extrude(height = 2*T_PLATE)
            square([2.2, 2.2], center = true);
//        // todo: add cutout for regulator pins
        };
}
    
//(10.20, 0.200), (10.50, 2.650), (13.25, 2.650), (13.25, 0.200),     
//(11.725, 6.665), (13.725, 6.665), (11.725, 3.740), (13.725, 3.740), \
