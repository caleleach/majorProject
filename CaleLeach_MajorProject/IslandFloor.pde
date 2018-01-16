class IslandFloor {
  //data
  float groundX,groundY,rockX,rockY,plantX,plantY;
  float foodX,foodY,waterX,waterY;
  
  
  
  IslandFloor() {
    groundX = width/2;
    groundY = height/2;
    rockX = width/2;
    rockY = height/2;
    plantX = width/2;
    plantY = height/2;
    foodX = width/2;
    foodY = height/2;
    waterX = width/2;
    waterY = height/2;
    
    
  }
  
  void displayBack() {
    displayGround();
    displayPlant();
    displayRock();
    
  }
  
  void displayFront() {
     foodPickup();
     waterPickup();
    
  }
  
  void displayGround() {
    fill(255,250,144);
    ellipseMode(CENTER);
    ellipse(groundX,groundY + 100, 1000,400);
  }
  
  void displayRock() {
    fill(129);
    rectMode(CENTER);
    rect(rockX - 150,rockY - 50,90,80);
    
  }
  
  void displayPlant() {
    fill(25,222,0);
    rectMode(CENTER);
    rect(plantX + 150,plantY - 50, 80,120);
    
  }
  
  void foodPickup() {
    fill(234,8,0);
    rectMode(CENTER);
    rect(foodX - 100,foodY + 100,30,30);
  }
  
  void waterPickup() {
    fill(2,22,222);
    rectMode(CENTER);
    rect(waterX + 100,waterY + 100,30,30);
    
  }
  
  
  
  
  
  
  
  
  
}