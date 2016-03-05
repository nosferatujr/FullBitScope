module hole() {
      difference(){
    union(){
    cube([198 , 108 ,1.6] ,true );
    translate([0, 0, 2 ]) cube([182 , 108 ,5] ,true );
}
 translate([0,-19.5,0])cube([171 , 59.5 ,10] ,true ); 
 translate([0, -20, -4.5 ]) cube([177 , 65 ,16] ,true );
translate([0, 3, -1 ])cylinder(8,5,22, $fn=200);
}  

}






module topbox() {

 difference(){   
 union(){
   translate([0, 11, -20 ]) cube([175 , 2 ,40] ,true );
   translate([0, -51, -20 ]) cube([175 , 2 ,40] ,true );
   translate([87, -20, -20 ]) cube([2,64,40  ] ,true ); 
   translate([-87, -20, -20 ]) cube([2,64,40  ] ,true ); 
   translate([0, -20, -40 ]) cube([176 , 64 ,1.6] ,true );
   translate([0,9.5, -1 ]) cube([160 , 4 ,2] ,true );
    
     
     
    } 
   translate([0, -40, -3 ])
    rotate([90,0,90])cylinder(  180 , 3.5,  3.5 ,true,$fn=100);
   translate([0, -40, 0 ])cube([180 , 7 ,7] ,true ); 
   translate([0,7.7, -1 ]) cube([120 , 4.5 ,2.5] ,true );
}
}

module tapa(){
    
    difference(){
    union(){
 translate([0,-19.5,0])cube([168 , 57.5 ,1.6] ,true ); 
     translate([0, -40, -4 ])
  rotate([90,0,90])cylinder(  176 , 3,  3 ,true, $fn=100);  
    translate([0, -40, -2.5 ])cube([168 , 6 ,6] ,true ); 
}
translate([0, -40, -6 ])cube([150 , 10 ,10] ,true );
}

}

module top(){
 translate([0, 0, -3 ]) hole();
 translate([0, 0, -1 ])  topbox();  
 color("red")tapa();
      
}

