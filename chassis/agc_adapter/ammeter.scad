// adapter plate for panel ammeter

2_56 = .07; // drill tap diameter
T_PLATE = .1;

MOUNT_X = 1.626;
MOUNT_Y = 1.07;

module hole(x, y, height, d) {
    translate([x, y, height/2])
        cylinder(h=2 * height,d=d,center=true,$fn=50);
}



difference() {
    linear_extrude(height = T_PLATE)
        square([MOUNT_X + .25, MOUNT_Y + .25], center = true);
    union() {
        
        // mounting holes for agc
        hole(-MOUNT_X/2, +MOUNT_Y/2, T_PLATE, 2_56);
        hole(-MOUNT_X/2, -MOUNT_Y/2, T_PLATE, 2_56);
        hole(+MOUNT_X/2, +MOUNT_Y/2, T_PLATE, 2_56);
        hole(+MOUNT_X/2, -MOUNT_Y/2, T_PLATE, 2_56);

        
        // cutout unused space in middle
        translate([0,0,-.5])
            linear_extrude(height = 1)
                square([1.336, .838], center = true);

        };
}
