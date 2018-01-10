Island island;
Resources info;
Ship ship;

import de.looksgood.ani.*;
float x,y;
int state;

void setup() {
  size(1000,600);
  smooth();
  noStroke();

  // you have to call always Ani.init() first!
  Ani.init(this);
  island = new Island();
  info = new Resources();
  ship = new Ship();
  
  state = 1;
}

void draw() {
  if (state == 0) {
    
  }
  
  else if (state == 1) {
  background(255);
  
  island.display();
  info.infoDisplay();
  ship.display();
  }
  
  if (state == 2) {
    
   
  }
}

void mouseReleased() {
    // animate the variables x and y in 1.5 sec to mouse click position
    //Ani.to(this, 1.5, "x", mouseX, Ani.SINE_OUT);
    //Ani.to(this, 1.5, "y", mouseY, Ani.BACK_OUT);
    ship.handleMouseReleased();
}