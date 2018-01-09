class Island {
  //data
  float x,y;
  float dx;
  int islandType;
  boolean islandOnScreen;
  
  Island() {
    x = width;
    y = height - 50;
    islandType = 1;
    dx = 2;
    islandOnScreen = false;
    
  }
  
  void display() {
    moveIsland();
    rectMode(CORNER);
    fill(93,218,255,200);
    rect(0,height - 20,1000,20);
    
  }
  
  void whatIsland() {
    fill(247,218,112);
    rectMode(CORNER);
    rect(x,y,100,100);
    x -= dx;
    
    if (islandType < 1) {
      fill(0,163,0);
      rect(x + 2,y - 25, 100, 25);
    }
    else if (islandType == 1) {
      fill(162,106,0);
      rect(x + 55,y - 15, 10, 15); 
      fill(0,163,0);
      rect(x + 50,y - 30, 20, 20);
    }
    else if (islandType > 1) {
      fill(129,129,129);
      rect(x + 45,y - 30, 15, 30);
      fill(162,106,0);
      rect(x + 30,y - 15, 40, 15); 
      fill(129,129,129);
      rect(x + 70,y - 20, 5, 20);
      rect(x + 30,y - 20, 5, 20);
    }
  }
  
  void moveIsland() {
    if (islandOnScreen == false) {
      whatIsland();
      islandOnScreen = true;
    }
    else if (islandOnScreen == true && x < width && x > -100) {
       whatIsland();
    }
    else {
      x = width;
      islandOnScreen = false;
      
      if (islandType < 2) {
        islandType += 1;
      }
      else {
        islandType = 0;
      }
    }
  }
  
  //void landed() {
  //  if 
    
    
    
  //}
}