class Ship {
  
  //data
  //Ani ShipXAni;
  //Ani ShipYAni;
  float x,y;
  
  Ship() {
    x = 256;
    y = 256;
    //ShipXAni = new Ani(this, 1.5, "x", mouseX, Ani.SINE_OUT);
    //ShipYAni = new Ani(this, 1.5, "y", mouseY, Ani.BACK_OUT);
  }
  
  void display() {
    fill(0);
    rectMode(CENTER);
    rect(x,y,60,40);
    
    
  }
 
  
  
  
  
  
  
  
  
}