Island island;
Resources info;
Ship ship;
Menu mainMenu;

import de.looksgood.ani.*;
float x,y;
int state;
boolean landed;

void setup() {
  size(1000,600);
  smooth();
  noStroke();
  
  landed = false;

  // you have to call always Ani.init() first!
  Ani.init(this);
  
  island = new Island();
  info = new Resources();
  ship = new Ship();
  mainMenu = new Menu();
  
  state = 0;
}

void draw() {
  if (state == 0) {
    background(0);
    mainMenu.displayStart();
  }
  
  else if (state == 1) {
    background(255);
  
    island.display();
    info.infoDisplay();
    ship.display();
  }
  
  if (state == 3) {
    background(255);
    mainMenu.displayEnd();
  }
}

void isShipLanded() {
  if (ship.x + 60 > island.x && ship.y + 40 > island.y) {
    landed = true;
  }   
}

void mouseReleased() {
    // animate the variables x and y in 1.5 sec to mouse click position
    //Ani.to(this, 1.5, "x", mouseX, Ani.SINE_OUT);
    //Ani.to(this, 1.5, "y", mouseY, Ani.BACK_OUT);
    ship.handleMouseReleased();
}