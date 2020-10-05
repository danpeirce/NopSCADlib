include <../core.scad>
include <../vitamins/pcbs.scad>
include <../vitamins/pin_headers.scad>

module axials() {
 //   pcb = PERF74x51;
    pcb = PERF20x17;
    pcb(pcb);

    pcb_grid(pcb, 3,  2.5)
        rotate(-90)
            ax_res(res1_4, 200, 5 );
    pcb_grid(pcb, 2,  3)
        rotate(-90)
            ax_res(ax_resistors[1], 68, 5, inch(0.4));
         //   ax_res(res1_4, 68, 5 );
    translate([25.4*0.16, 0.9, 3.5]) rotate([38,0,-90]) 
        scale([1,0.7,1]) led(LEDs[1], "amber" );
    pcb_grid(pcb, 0,  1)
        rotate(-90)
            pin_header(pin_headers[0], 3, 1, right_angle = true);
}

if($preview)
    axials();
