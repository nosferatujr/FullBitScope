
 module left(){
      $fn=200;
      module tal_osci(){  
    translate([0,20,0])   
    rotate([0,90,0])
    cylinder(  12 , 7,  7 ,true); 
    translate([0,-20,0])   
    rotate([0,90,0])
    cylinder(  12 , 7,  7 ,true);  
    translate([0,0,-3]) cube([22 , 22, 7 ] ,true );  
} 
difference(){    
	union(){    
		cube([110 , 1.6 ,122] ,true );
		translate([0, -5 , 59.7 ]) cube([110 , 10 ,1.6] ,true );
		translate([0, -5 , 55.0 ]) cube([110 , 10 ,1.6] ,true );
		translate([0, -5 , -60 ]) cube([110 , 10 ,1.6] ,true );
		translate([54.3, -5 , -3 ]) cube([1.6 , 10 ,115] ,true );
		translate([-54.3, -5 , -3 ]) cube([1.6 , 10 ,115] ,true );  
	}
    translate([-55, -4, -53]) rotate([0, 90 , 0 ]) cylinder(  9 , 2.4,  2.4 ,true);
translate([-55, -4, 40.5 ]) rotate([0, 90 , 0 ]) cylinder(  9 , 2.4,  2.4 ,true);
translate([55, -4, -53]) rotate([0, 90 , 0 ]) cylinder(  9 , 2,  2 ,true);
translate([55, -4, 48 ]) rotate([0, 90 , 0 ]) cylinder(  9 , 2,  2 ,true);  
translate([14, 0, -48])  rotate([0, 0 , 90 ]) tal_osci() ; 
}


}

 left();