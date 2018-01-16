class Ship {
  
  //data
  Ani ShipXAni;
  Ani ShipYAni;
  float x,y;
  
  Ship() {
    x = 256;
    y = 256;
  }
  
  void display() {
    fill(0);
    rectMode(CENTER);
    rect(x,y,60,40);
    
    
  }
 
  
  void handleMouseReleased() {
    ShipXAni = new Ani(this, 2.0, "x", mouseX, Ani.SINE_OUT);
    ShipYAni = new Ani(this, 2.0, "y", mouseY, Ani.BACK_OUT);
  }
}