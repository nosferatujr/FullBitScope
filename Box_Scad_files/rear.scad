    module ave() {
       rotate([90, 0 , 0 ]) cylinder(  4 , 2.4,  2.4 ,true);
       translate([0,0,-0])   rotate([90, 0 , 0 ]) cylinder(  2 , 3.5,  3.5 ,true);
    }

module rear(){
    

    
    difference(){
    rotate([90, 0, 0 ]) cube([205 , 132,3 ] ,true ); 
    translate([80,0,-40]) rotate([90,0,0]) cylinder(  12, 4,  4 ,true);  
       translate([-70,0,-42])  cube([55, 5,20   ] ,true );   
        translate([0,0,-47])  cube([15 , 12, 10 ] ,true );
  translate([0, 0, 0-61 ])     ave();
  translate([98, 0, -61 ])    ave();
  translate([-98, 0, -61 ])    ave();
  translate([98, 0, 114-61 ]) ave();
  translate([-98, 0, 114-61 ]) ave();

        
    }
     translate([-50,0,-49]) cube([15, 3,10   ] ,true );   

    }
    
    //rear();
    
