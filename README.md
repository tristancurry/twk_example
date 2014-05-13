twk_example
===========

Draws an ellipse that orbits the centre of the sketch window with adjustable angular velocity, or can be dragged around with the mouse. Between the corners and the ellipse there are also some lines(!)

Use to demonstrate Tweak Mode in Processing. It's possible to discover all kinds of neat patterns by accident - much harder to stumble upon these things with a CHANGE-COMPILE-CHANGE-COMPILE-... workflow.

##### Some kool things

* The default look creates the impression of 3D! Fat lines, moderate trails, orbital radius ~ window size, slowish orbit

* See unintentional aliasing: if you set the angular increment to something slightly higher or lower than a large fraction of a circle (e.g. 46 degrees) with some thin lines and trails, all sorts of weird patterns spring up.

* Also this leads to some interesting ideas: maybe the ellipse could continue from wherever it was dragged to? Or maybe the four lines are actually springs of some sort and the ellipse is also trying to fall by gravity?

