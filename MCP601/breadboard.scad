color("white") import("breadboard-400.stl");

include <../utils/core/core.scad>
// use <../utils/layout.scad>

include <../vitamins/leds.scad>
use <../vitamins/dip.scad>

inch = 25.4;

translate([3.75, 2.5+0.1*inch,11]) rotate([0, 0, 90])
    led(LEDs[1], "red");

translate([10.2+0.3*inch, 10.1+0.3*inch, 9.5])
pdip([8, "MCP601"][0], [8, "MCP601"][1], [8, "MCP601"][0] > 20);

translate([2.2+0.3*inch, 5.1+0.3*inch, 14])
    cube([3.81, 2.54, 3.14 ]);