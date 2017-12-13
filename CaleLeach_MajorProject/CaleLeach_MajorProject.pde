Island island;

import de.looksgood.ani.*;

float x = 256;
float y = 256;

void setup() {
  size(1000,600);
  smooth();
  noStroke();

  // you have to call always Ani.init() first!
  Ani.init(this);
  island = new Island();
}

void draw() {
  background(255);
  fill(0);
  rectMode(CENTER);
  rect(x,y,60,60);
  
  island.display();
}

void mouseReleased() {
    // animate the variables x and y in 1.5 sec to mouse click position
    Ani.to(this, 1.5, "x", mouseX, Ani.SINE_OUT);
    Ani.to(this, 1.5, "y", mouseY, Ani.BACK_OUT);
}