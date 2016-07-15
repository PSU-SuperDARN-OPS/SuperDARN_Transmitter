// units in inches
T_bracket = .2;
T_hole = .5;
T_corner = .6;
T_shell = .15;
L1 = 2.5;
L2 = 1.85;
Hu1 = .75;
Hu2 = 1.5;
Hl1 = 1.25;
Hl2 = 2;
W = .8;
D_hole = .2;


module prism(l, w, h){
       polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
}
difference() {
    union() {
      translate([L1/2,0,0])
        linear_extrude(height = T_bracket)
                square([L1, W], center = true);
      
      translate([T_bracket/2,0,0])
        linear_extrude(height = L2)
                square([T_bracket, W], center = true);
        
      translate([T_corner,-W/2,0 ])
        rotate([0,0,90])
            prism(W, T_corner, T_corner);
        
      translate([L2,-W/2,0 ])
        rotate([0,0,90])
            prism(T_shell, L2, L2);
        
      translate([L2,W/2-T_shell,0 ])
        rotate([0,0,90])
            prism(T_shell, L2, L2);
    };
    
    union() {
        translate([Hl1, 0, 0])
            cylinder(h=T_hole,d=D_hole,center=true,$fn=50);
        
        translate([Hl2, 0, 0])
            cylinder(h=T_hole,d=D_hole,center=true,$fn=50);

        rotate([0,270,0])
            translate([Hu1, 0, 0])
                cylinder(h=T_hole,d=D_hole,center=true,$fn=50);
        
        rotate([0,270,0])
            translate([Hu2, 0, 0])
                cylinder(h=T_hole,d=D_hole,center=true,$fn=50);
    };
}