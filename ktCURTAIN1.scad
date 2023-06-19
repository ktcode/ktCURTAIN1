//
// ktCURTAIN1
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;
//for A
h = 6.5 + 0.5;
r = (26+0.6)/2;
rr = r + 4/2;
rh = 8/2;

//A();
//B();
//C1();
C2();
//D1();
//D2();

module A()
difference()
{
    union()
    {
        translate([0, 0, h+th/2]) rotate([0, 0, 0,]) cylinder(th/2,  r+rh, r+rh, $fn=100);
        translate([0, 0, h]) rotate([0, 0, 0,]) cylinder(th/2,  r+rh-2.2, r+rh, $fn=100);
        translate([0, 0, 0]) rotate([0, 0, 0,]) cylinder(h,  rr, rr, $fn=100);
        translate([0, 0, -th/2]) rotate([0, 0, 0,]) cylinder(th/2,  r+rh, r+rh-2.2, $fn=100);
        translate([0, 0, -th]) rotate([0, 0, 0,]) cylinder(th/2,  r+rh, r+rh, $fn=100);
    }

    translate([0, 0, -10]) rotate([0, 0, 0,]) cylinder(30, r, r, $fn=100);

    for (i =[0:(360/48):360])
    {
        rotate([0, 0, i,]) translate([r+2, 0, -gap1]) scale([1.4, 1, 1]) cylinder(h+gap2, 1, 1, $fn=4);
    }
}

module B()
difference()
{
    union()
    {
        translate([0, 0, 0])
        rotate([0, 0, 0])
        hull()
        {
            translate([0, 0, 10])
            minkowski()
            {
                cube([60.5-1*2, 23-1*2, gap1], center=true);
                cylinder(r=1, h=gap1, $fn=50);
            }
            minkowski()
            {
                cube([59-1*2, 19.7-1*2, gap1], center=true);
                cylinder(r=1, h=gap1, $fn=50);
            }
        }
        translate([-1, 0, 0])
        rotate([0, 0, 0])
        hull()
        {
            translate([0, 0, 10])
            cube([17.5,  32.5, gap1], center=true);
            cube([17.5,  29.5, gap1], center=true);
        }
    }
    translate([-40, 16-16.5, -7]) rotate([90, 0, 0]) cylinder(17,  r+rh, r+rh, $fn=100);
    
    translate([-22, -7, 10]) rotate([180, 0, 0]) rear_screw_hole();
    translate([22, -7, 10]) rotate([180, 0, 0]) rear_screw_hole();
}

module C()
difference()
{
    union()
    {
        translate([0, 0, 0])
        rotate([0, 0, 0])
        hull()
        {
            translate([0, 0, 10])
            minkowski()
            {
                cube([60.5-1*2, 23-1*2, gap1], center=true);
                cylinder(r=1, h=gap1, $fn=50);
            }
            minkowski()
            {
                cube([59-1*2, 19.7-1*2, gap1], center=true);
                cylinder(r=1, h=gap1, $fn=50);
            }
        }
        translate([-1, 0, 0])
        rotate([0, 0, 0])
        hull()
        {
            translate([0, 0, 10])
            cube([17.5,  32.5, gap1], center=true);
            cube([17.5,  29.5, gap1], center=true);
        }
    }
    
    translate([-40, 16, -7]) rotate([90, 0, 0]) cylinder(17,  r+rh, r+rh, $fn=100);
    
    //translate([-22, 7, 10]) rotate([180, 0, 0]) rear_screw_hole();
    //translate([22, 7, 10]) rotate([180, 0, 0]) rear_screw_hole();
}

module C1()
{
difference()
{
    union()
    {
        translate([60.5/2, 10, -10-3]) C();
        translate([0, 0, -3]) cube([60.5+21, 37, 3]);
        translate([0, -7, -3]) cube([20, 7, 3]);
        translate([40.5, -7, -3]) cube([20, 7, 3]);
        translate([0, 37, -3]) cube([20, 7, 3]);
        translate([40.5, 37, -3]) cube([20, 7, 3]);
        translate([0, 0, 0]) cube([60.5, 37, 12]);
        translate([60.5, 0, 0]) cube([21+10, 37, 12]);
        translate([60.5+21, 0, -3]) cube([10, 37, 23]);
    }
    translate([3-0.5, 10-0.5, 0-gap1]) cube([60.5-3*2+1+40, 15+1, 30]);
    translate([60.5, -10, 12-1-2-4]) cube([15+6, 37+20, 10]);
    translate([60.5+21-5+gap1, 0-gap1, -10]) cube([10+5, 3, 40]);
    translate([60.5+21-5+gap1, 37-3+gap1, -10]) cube([10+5, 3, 40]);
    translate([60.5, 10-0.5, -10]) cube([21, 15+1, 30]);
    translate([60.5+21-gap1, 10-0.5, -1]) cube([10+gap2, 15+1, 30]);
    
    translate([60.5/2, 10, -10])
    {
        translate([-22, 7, 10+3]) rotate([180, 0, 0]) rear_screw_hole();
        translate([22, 7, 10+3]) rotate([180, 0, 0]) rear_screw_hole();
    }
    
    translate([60.5-15-3-1, -10, 12-1-2]) cube([15+2, 37+20, 5]);
    translate([3-1, -10, 12-1-2]) cube([15+2, 37+20, 5]);
}
translate([60.5+21, 3, -3]) cube([10, 37-6, 2]);
}

module C2()
difference()
{
    union()
    {
        translate([3, 10, 0]) cube([60.5-3*2, 15, 16-1+3]);
        translate([60.5-15-3, 10, 0]) cube([15, 15, 20]);
        translate([60.5-25+10-3, 10, 20]) cube([21+25+3, 15, 10]);
        translate([60.5+21, 10, 0]) cube([10, 15, 20]);
        translate([60.5-15-3, -10, 12-1-1+3]) cube([15, 37+20, 5]);
        
        translate([3, 10, 0]) cube([15, 15, 15]);
        translate([3, -10, 12-1-1+3]) cube([15, 37+20, 5]);
    }
    
    translate([60.5/2, 10, -10])
    {
        translate([-22, 7, 10+3]) rotate([180, 0, 0]) rear_screw_hole();
        translate([22, 7, 10+3]) rotate([180, 0, 0]) rear_screw_hole();
    }
}

module D1()
{
difference()
{
    union()
    {
        //translate([60.5/2, 10, -10-3]) C();
        translate([0, 0, -3]) cube([60.5+21, 37, 3]);
        translate([0, -7, -3]) cube([20, 7, 3]);
        translate([40.5, -7, -3]) cube([20, 7, 3]);
        translate([0, 37, -3]) cube([20, 7, 3]);
        translate([40.5, 37, -3]) cube([20, 7, 3]);
        translate([0, 0, 0]) cube([60.5, 37, 12]);
        translate([60.5, 0, 0]) cube([21+10, 37, 12]);
        translate([60.5+21, 0, -3]) cube([10, 37, 23]);
    }
    translate([3-0.5, 10-0.5, 0-gap1]) cube([60.5-3*2+1+40, 15+1, 30]);
    translate([60.5, -10, 12-1-2-4]) cube([15+6, 37+20, 10]);
    translate([60.5+21-5+gap1, 0-gap1, -10]) cube([10+5, 3, 40]);
    translate([60.5+21-5+gap1, 37-3+gap1, -10]) cube([10+5, 3, 40]);
    translate([60.5, 10-0.5, -10]) cube([21, 15+1, 30]);
    translate([60.5+21-gap1, 10-0.5, -1]) cube([10+gap2, 15+1, 30]);
    
    translate([60.5/2, 10, -10])
    {
        translate([-22, 7, 10+3]) rotate([180, 0, 0]) rear_screw_hole();
        translate([22, 7, 10+3]) rotate([180, 0, 0]) rear_screw_hole();
    }
    
    translate([60.5-15-3-1, -10, 12-1-2]) cube([15+2, 37+20, 5]);
    translate([3-1, -10, 12-1-2]) cube([15+2, 37+20, 5]);
    
    translate([0, -20, -20]) cube([40, 100, 50]);
    translate([60.5/2, 10, -13])
    {
        translate([22, 7, 10+3]) rotate([180, 0, 0]) screw_hole();
    }

}
translate([60.5+21, 3, -3]) cube([10, 37-6, 2]);
translate([60.5, 6, 0]) D1B();
}
module D1B()
{
difference()
{
    union()
    {
        translate([0-5, 15-8-4, -27]) cube([28.5+5, 24, 26]);
    }
    translate([22, 15-5, -21]) rotate([-90, 0, 0]) cylinder(10, 11, 11, $fn=30);
    translate([0-21, 15-5, -31]) cube([56, 10, 21]);
    
    translate([22, 0, -21]) rotate([-90, 0, 0]) cylinder(30, 5/2+1/2, 5/2+1/2, $fn=30);
    
    translate([22, 25, -21]) rotate([-90, 0, 0]) cylinder(5, 5, 5, $fn=6);
}
}

module D2()
difference()
{
    union()
    {
        translate([3, 10, 0]) cube([60.5-3*2, 15, 16-1]);
        translate([60.5-15-3, 10, 0]) cube([15, 15, 20]);
        translate([60.5-25+10-3, 10, 20]) cube([21+25+3, 15, 10]);
        translate([60.5+21, 10, 0]) cube([10, 15, 20]);
        translate([60.5-15-3, -10, 12-1-1]) cube([15, 37+20, 5]);
        
        translate([3, 10, 0]) cube([15, 15, 15]);
        translate([3, -10, 12-1-1]) cube([15, 37+20, 5]);
    }
    
    translate([60.5/2, 10, -10])
    {
        translate([-22, 7, 10+3]) rotate([180, 0, 0]) rear_screw_hole();
        translate([22, 7, 10+3]) rotate([180, 0, 0]) rear_screw_hole();
    }
    
    translate([0, -20, -20]) cube([40, 100, 50]);
}

module screw_hole()
{
    cylinder( 10, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 10, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}
module screw_hole2()
{
    translate([0, 0, -5]) cylinder( 20, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 3, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}
module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(15, 1.8, 1.8, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.8+0.7, 1.8, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 2.75+0.4, 2.75-0.6, $fn=30);
    translate([0, 0, -30]) cylinder(30, 2.75+0.4, 2.75+0.4, $fn=30);
}