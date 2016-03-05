include <base.scad>
include <foot.scad>
include <front.scad>
include <top.scad>
include <right.scad>
include <left.scad>
include <rear.scad>

translate([0, -57, 61 ]) rear(); 

color("green")base();
  translate([0, 40, -21 ]) rotate([90, 0, 0 ])
foot();

  translate([0, 60.5, 59.5 ]) rotate([270, 180, 0 ])
front(); 

  translate([-102, 0, 66 ]) rotate([0, 0, 270 ])
color("red")right();

   translate([102, 0, 66 ]) rotate([0, 0, 270 ])
color("red")left();

translate([0, 0 , 125.5 ]) 
 top();