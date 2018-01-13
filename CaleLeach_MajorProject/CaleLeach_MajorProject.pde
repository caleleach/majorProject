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
  
  state = 0;
  landed = false;

  // you have to call always Ani.init() first!
  Ani.init(this);
  
  island = new Island();
  info = new Resources();
  ship = new Ship();
  mainMenu = new Menu();
}

void draw() {
  if (state == 0) {
    background(0);
    isShipLanded();
    mainMenu.displayStart();
  }
  
  else if (state == 1) {
    background(255);
    
    if (landed == true) {
      state = 0; 
    }
  
    island.display();
    info.infoDisplay();
    ship.display();
  }
  
  else if (state == 2) {
    background(0);
  }
  
  else if (state == 3) {
    background(255);
    mainMenu.displayEnd();
  }
}

void isShipLanded() {
  if (ship.x + 30 > island.x && ship.x + 30 < island.x + 100 && ship.y + 20 > island.y && ship.y < island.y + 100) {
    landed = true; 
  }   
}

void mouseReleased() {
    // animate the variables x and y in 1.5 sec to mouse click position
    //Ani.to(this, 1.5, "x", mouseX, Ani.SINE_OUT);
    //Ani.to(this, 1.5, "y", mouseY, Ani.BACK_OUT);
    ship.handleMouseReleased();
}