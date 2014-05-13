/*
Tristan Miller 2014, tristan at mindcloud dot org
Tweak Mode can be activated by going to the mode menu in the top right of the window.
This usually says Java.
Select Add Mode= from this menu, then install Tweak Mode.
Once installed, and you have restarted Processing, you'll be able to choose this mode to work in!
*/

//GLOBAL VARIABLES (must be able to maintain values outside all loops)

float angle = 0;


//SETUP (runs once when program starts)

void setup(){
  size(800,800);
}


//DRAW (runs over and over)

void draw(){
  


  
  float diam = 130.0;
  float angleIncrement = radians(1.0); //the angle you shift by each frame
  angle = angle + angleIncrement; 
  
  float radius = 250;  //radius of path for autopilot
  float posX; 
  float posY; //x and y coordinates for ellipse centre
  
  if(mousePressed){  //decide whether to use the mouse for posX and posY, or use autopilot
    posX = mouseX;
    posY = mouseY;
  } else {
    posX = width/2 + radius*sin(angle);
    posY = height/2 + radius*cos(angle);
  }
  
  
  
  
  //draw the background rectangle
  fill(50,0,50,15);
  strokeWeight(0);
  stroke(0,0,0,255);
  rect(0,0, width, height);
  
  //draw the connecting lines from each corner
  strokeWeight(160);
  stroke(255,127,0,255);
  line(0,0, posX, posY);
  line(width, 0, posX, posY);
  line(0, height, posX, posY);
  line(width, height, posX, posY);
  
  //draw the little ball in the centre
  ellipseMode(CENTER);
  fill(255,0,0,255);
  strokeWeight(255);
  stroke(0,0,40,255);
  ellipse(posX,posY,diam,diam);

  

  
 
}
