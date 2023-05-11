use <threadlib/threadlib.scad>
$fn=500;
m49turn=4;
difference() {    
    union() {
        difference() {
            union() {
                translate([0,0,m49turn*0.75]) cylinder(1, d1=49, d2=49+2);
                translate([0,0,m49turn*0.75+1]) cylinder(1, d=49+2);                
                bolt("M49x0.75", turns=m49turn, higbee_arc=30);
            }
            translate([0,0,2]) cylinder(10, d=49-4);
        }
        translate([0,0,2]) bolt("M37x0.75", turns=4, higbee_arc=30);
    }
    translate([0,0,-0.5]) cylinder(10, d=37-4);
}