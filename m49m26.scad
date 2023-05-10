use <threadlib/threadlib.scad>
difference() {
bolt("M49x0.75", turns=6, higbee_arc=30);
translate([0, 0, -0.05])    
tap("M26x36TPIv2", turns=6.5);
}