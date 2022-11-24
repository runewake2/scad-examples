CreateDice(16);

module CreateDice(size = 16) {
    textSize = size * 0.75;
    textLocation = size / 2 - 1;
    textExtrusionSize = 2;
    difference() {
        cube([size, size, size], center = true);
        translate([0,0,textLocation]) linear_extrude(textExtrusionSize) text("a", size=textSize, halign="center", valign="center");
        rotate([180, 0, 0]) translate([0,0,textLocation]) linear_extrude(textExtrusionSize) text("b", size=textSize, halign="center", valign="center");
        rotate([0, 90, 0]) translate([0,0,textLocation]) linear_extrude(textExtrusionSize) text("c", size=textSize, halign="center", valign="center");
        rotate([0, 270, 0]) translate([0,0,textLocation]) linear_extrude(textExtrusionSize) text("d", size=textSize, halign="center", valign="center");
        rotate([90, 0, 0]) translate([0,0,textLocation]) linear_extrude(textExtrusionSize) text("e", size=textSize, halign="center", valign="center");
        rotate([270, 0, 0]) translate([0,0,textLocation]) linear_extrude(textExtrusionSize) text("f", size=textSize, halign="center", valign="center");
    }
}