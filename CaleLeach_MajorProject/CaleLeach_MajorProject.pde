Island island;
Resources info;
Ship ship;

import de.looksgood.ani.*;
float x,y;

void setup() {
  size(1000,600);
  smooth();
  noStroke();

  // you have to call always Ani.init() first!
  Ani.init(this);
  island = new Island();
  info = new Resources();
  ship = new Ship();
}

void draw() {
  background(255);
  x = ship.x;
  y = ship.y;
  
  island.display();
  info.infoDisplay();
  ship.display();
}

void mouseReleased() {
    // animate the variables x and y in 1.5 sec to mouse click position
    Ani.to(this, 1.5, "x", mouseX, Ani.SINE_OUT);
    Ani.to(this, 1.5, "y", mouseY, Ani.BACK_OUT);
}