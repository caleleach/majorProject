class Island {
  //data
  float x,y;
  int islandType;
  
  Island() {
    x = width/2;
    y = height - 50;
    islandType = 2;
    
  }
  
  void display() {
    fill(247,218,112);
    rectMode(CORNER);
    rect(x,y,100,100);
    whatIsland();
    
  }
  
  void whatIsland() {
    if (islandType < 1) {
      fill(0,163,0);
      rect(x,y - 25, 100, 25);
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
}