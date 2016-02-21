module front_p(){
union(){
difference(){
difference(){
    cube([205 , 122,11 ] ,true ); 

    
 translate([0, -7, 3 ]) 
    union(){
    cube([170 , 104, 11 ] ,true ); 
        translate([64.5, 36.5, 0 ])  cylinder(  18 , 2,  2 ,true); 
        translate([-62.5, 36.5, 0 ])  cylinder(  18 , 2,  2 ,true); 
        translate([64.5, -29, 0 ])  cylinder(  18 , 2,  2 ,true); 
        translate([-62.5, -29, 0 ])  cylinder(  18 , 2,  2 ,true); 
}
}
translate([0, -7.5, 0 ]) 
union(){
   cube([80 , 89, 18 ] ,true ); 
translate([35, 5, 0 ]) cube([45 , 45, 18 ] ,true );   
}
}
translate([0, -65.5, 0]) cube([205 , 9,11 ] ,true ); 
translate([0, 61.9, 0]) cube([205 , 2,11 ] ,true ); 
}

}

module screws(){
//top
translate([98, 57 , 2 ])  cylinder(  9 , 1,  2 ,true); 
translate([0, 57 , 2 ])  cylinder(  9 , 1,  2 ,true);
translate([-98, 57 , 2 ])  cylinder(  9 , 1,  2 ,true);
// bottom
translate([98, -66.5 , 2 ])  cylinder(  9 , 1,  2 ,true);
translate([0, -66.5 , 2 ])  cylinder(  9 , 1,  2 ,true);
translate([-98, -66.5 , 2 ])  cylinder(  9 , 1,  2 ,true);
//right
translate([98, 42 , 2 ])  cylinder(  9 , 1,  2 ,true); 
translate([98, -51.5 , 2 ])  cylinder(  9 , 1,  2 ,true);
// left
translate([-98, 42 , 2 ])  cylinder(  9 , 1,  2 ,true);
translate([-98, -51.5 , 2 ])  cylinder(  9 , 1,  2 ,true);
}
module front(){
     $fn=100;
translate([0, 5 , 0 ])    
difference(){    
front_p();
  rotate([0, 180 , 0 ])     screws();
}
}
front();