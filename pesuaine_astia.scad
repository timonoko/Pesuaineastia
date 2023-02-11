include <roundedcube.scad>

//leveys=50;
leveys=40;

module kaikki() {
  difference(){
    roundedcube([leveys,100,45],radius=10);
    translate([2,2,2]) roundedcube([leveys-4,96,47],radius=8);
    translate([leveys/2,15,-1]) cylinder(d=6,h=5);
  }

  translate([leveys/2,15,0]) difference(){
    cylinder(d=8,h=34);
    translate([0,0,-1])cylinder(d=6,h=55);
  }

  //  translate([leveys/2,15,36])rotate([180,0,0,])
  translate([10,-7,0])
    difference() {
     cylinder(d=12,h=35);
     translate([0,0,1]) cylinder(d=10,h=50);
     translate([0,10,35]) rotate([90,0,0]) cylinder(d=4,h=20);
  }
}

scale([1,1,0.85])
kaikki();

//difference(){ kaikki(); cube([25,20,40]); }

