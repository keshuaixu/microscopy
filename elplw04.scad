use <threadlib/threadlib.scad>
$fn=500;
m42turn=4;
flange = m42turn*1;
backfocal=m42turn*1+2;
difference(){
    union(){
        bolt("M42x1", turns=m42turn, higbee_arc=30);
        translate([0,0,flange]) cylinder(8.9, d=79);
    }
    translate([0,0,backfocal]) {
        translate([0,0,-10]) cylinder(20, d=38);
        cylinder(7, d=75.2);
        translate([0,0,2.5]) {        
            rotate([90,0,0]) cylinder(50, d=3.2);
            rotate([90,0,120]) cylinder(50, d=3.2);
            rotate([90,0,240]) cylinder(50, d=3.2);
        }
    }
}


/*
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
*/