class Player {
  //data
  float x,y;
  float dx,dy;
  boolean up,down,left,right;
  
  
  Player() {
    x = width/2;
    y = height/2;
    dx = 5;
    dy = 5;
    up = false;
    down = false;
    left = false;
    right = false;
    
    
  }
  
  void display() {
    fill(0);
    rectMode(CENTER);
    rect(x,y,50,100);
    
  }
  
  void move() {
    if (right == true) {
      x += dx; 
    }
    if (left == true) {
      x -= dx; 
    }
    if (up == true) {
      y -= dy;
    }
    if (down == true) {
      y += dy; 
    }
  }
  
  void handleKeyPressed() {
    if (key == 'd' || key == 'D') {
      right = true;
    }
    if (key == 'a' || key == 'A') {
      left = true;
    }
    if (key == 'w' || key == 'W') {
      up = true;
    }
    if (key == 's' || key == 'S') {
      down = true;
    } 
  }
  
  void handleKeyReleased() {
    if (key == 'd' || key == 'D') {
      right = false;
    }
    if (key == 'a' || key == 'A') {
      left = false;
    }
    if (key == 'w' || key == 'W') {
      up = false;
    }
    if (key == 's' || key == 'S') {
      down = false;
    }  
    
  }
  
}