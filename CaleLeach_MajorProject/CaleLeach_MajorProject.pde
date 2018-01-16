//add collision for food and water
//food and water variables change when picked up
//when all food and water is picked up return to air
Island island;
Resources info;
Ship ship;
Menu mainMenu;
Player player;
IslandFloor islandFloor;

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
  player = new Player();
  islandFloor = new IslandFloor();
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
      state = 2; 
    }
    else if (landed == false) {
      island.display();
      removeResources();
      isShipLanded();
      info.infoDisplay();
      ship.display();
    }
  }
  
  else if (state == 2) {
    background(0,217,234);
    islandFloor.displayBack();
    player.move();
    player.display();
    islandFloor.displayFront();
    
  }
  
  else if (state == 3) {
    background(255);
    mainMenu.displayEnd();
  }
}

void isShipLanded() {
  if (ship.x > island.x && ship.x < island.x + 100 && ship.y > island.y && ship.y < island.y + 100) {
    landed = true; 
  }   
}

void removeResources() {
  if (island.removeResources == true) {
    if (info.food > 0) {
      info.food -= 10;
    }
    if (info.water > 0) {
      info.water -= 20;
    }
    else {
      info.crew -= 2; 
    }
  }
}

void mouseReleased() {
    ship.handleMouseReleased();
}

void keyPressed() {
  player.handleKeyPressed();
}

void keyReleased() {
  player.handleKeyReleased();
}