module _screws_box(diam){
	translate([98, 0 , 2 ])  cylinder(  9 , 1,  diam/2 ,true);
	translate([0, 0 , 2 ])  cylinder(  9 , 1,  diam/2 ,true);
	translate([-98, 0 , 2 ])  cylinder(  9 , 1,  diam/2 ,true);
} 
 
module screws_box(){
	translate([0, -49, 0 ]) rotate([90, 0 , 0 ]) _screws_box(4);
	translate([0, 49, 0 ]) rotate([-90, 0 , 0 ]) _screws_box(4.5);
} 
module soporte_pi (){
	translate([25, 29, 5.5 ])  cylinder(  5 , 2.5,  2.5 ,true); 
	translate([-25, -29,  5.5 ])  cylinder(  5 , 2.5,  2.5 ,true); 
	translate([-25, 29,  5.5 ])  cylinder(  5 , 2.5,  2.5 ,true); 
	translate([25, -29,  5.5 ])  cylinder(  5 , 2.5,  2.5 ,true); 
}
 module talpwr(){
  translate([8, -50, 4.5 ])  cylinder(  9 , 1,  1.7 ,true);
  translate([-8, -50, 4.5 ])  cylinder(  9 , 1,  1.7 ,true);    
 }
 
 module tal_pi(){
 translate([25, 29, 4.5]) cylinder(  9 , 1,  1.7 ,true);
 translate([-25, -29,  4.5 ]) cylinder(  9 , 1,  1.7 ,true);
 translate([-25, 29,  4.5 ])cylinder(  9 , 1,  1.7 ,true);
 translate([25, -29,  4.5 ]) cylinder(  9 , 1,  1.7 ,true); 
 }

module sd(){
    difference(){
  cube([25 , 17,6 ] ,true ); 
   translate([0, -1,  -1 ])cube([23 , 17, 6 ] ,true );  
    } 
} 
 
module box(){ 
	difference(){
		difference(){
			cube([205 , 110,11 ] ,true ); 
			screws_box();
		}
		translate([(102.5-32)*-1, 33, 0 ])  cube([20 , 28, 12 ] ,true ); 
	}

	translate([-71.5, 0, 0 ]) soporte_pi();
	translate([8, -50, 5.5 ])  cylinder(  5 , 2.5,  2.5 ,true); 
	translate([-8, -50, 5.5 ])  cylinder(  5 , 2.5,  2.5 ,true);  
}
 
 module base(){
	difference(){
		box();
		translate([0, 40, -3 ])   cube([105 , 11,11 ] ,true ); 
		translate([0, -40, -3 ])   cube([105 , 11,11 ] ,true ); 
		translate([97, 34, 1.5 ])   cube([8, 37,9 ] ,true ); 
		translate([0, 34, 1.5 ])   cube([8, 37,9 ] ,true ); 
		translate([-99, 34, 0 ])   cube([8, 37,9 ] ,true ); 
		translate([-71.5, 0, 0 ]) tal_pi();
		talpwr();
	}
	difference(){ 
		union(){ 
			translate([20, 0, 10 ])   cube([20, 3, 12] ,true ); 
			translate([20, -30, 10 ])   cube([20, 3, 12] ,true ); 
		}
		translate([20, -10, 11 ]) rotate([90, 0 , 0 ]) cylinder(  60 , 2.5,  2.5 ,true); 
	}
	translate([-70.5, 41, 8.4 ]) sd();
}
//base();