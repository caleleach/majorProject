class Resources {
  //data
  float infoX,infoY;
  int crew, food, water;
  
  
  Resources() {
    infoX = 20;
    infoY = 20;
    crew = 50;
    food = 100;
    water = 100;
    
    
  }
  
  void infoDisplay() {
    fill(180,180,180);
    text(crew, infoX, infoY);
    fill(255,188,54);
    text(food, infoX + 20, infoY);
    fill(33,209,255);
    text(water, infoX + 50, infoY);
  }
  
  void crewStuff() {
    //low on food
    if (food == 0) {
      crew -= 2;
    }
    
  }
  
  
  
}