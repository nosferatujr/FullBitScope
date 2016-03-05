module right(){
  module psip(){
//translate([-43,0,0])rotate([90, 90 , 0 ]) cube([16, 16 ,5 ] ,true ); 
 difference(){
translate([14, 0, -3.5 ]) cylinder(  8 , 2.5,  2.5 ,true); 
translate([14, 0, -4.5])  cylinder(  7 , 1.7,  1 ,true); 
 }
 difference(){
translate([-14, 0, -3.5 ]) cylinder(  8 , 2.5,  2.5 ,true); 
translate([-14, 0, -4.5])  cylinder(  7 , 1.7,  1 ,true); 
 } 
 }
  
 difference(){    
union(){    
cube([110 , 1.6 ,122] ,true );
translate([0, 5 , 59.7 ]) cube([110 , 10 ,1.6] ,true );
translate([0, 5 , 55.0 ]) cube([110 , 10 ,1.6] ,true );
translate([54.3, 5 , -3 ]) cube([1.6 , 10 ,116] ,true );
translate([-54.3, 5 , -3 ])  cube([1.6 , 10 ,116] ,true );
translate([-43,0,-30])rotate([90, 90 , 0 ])psip();
}

translate([0, 0 , -55.6 ]) cube([17, 17 ,13] ,true );
translate([21, 0 , -55.6 ]) cube([8, 8 ,13] ,true );
translate([-55, 4, -53]) rotate([0, 90 , 0 ]) cylinder(  9 , 2.4,  2.4 ,true);
translate([-55, 4, 40.5 ]) rotate([0, 90 , 0 ]) cylinder(  9 , 2.4,  2.4 ,true);
translate([55, 4, 48 ]) rotate([0, 90 , 0 ]) cylinder(  9 , 2,  2 ,true);
translate([-43,0,-30])rotate([90, 90 , 0 ]) cube([16, 16 ,5 ] ,true ); 

translate([55, 7, -48]) rotate([-2, 90 , 0 ]) cube([26, 12 ,5 ] ,true ); 


}   


}

//right();