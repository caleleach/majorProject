class Menu {
  //data
  float buttonX,buttonY;
  float buttonLength,buttonHeight;
  boolean overButton;
  
  Menu() {
    buttonLength = 250;
    buttonHeight = 150;
    buttonX = width/2 - buttonLength/2;
    buttonY = height/2 - buttonHeight/2;
    overButton = false;
    
    
  }
  //----------------------------
  //start and end screens
  void displayStart() {
    button();  
  }
  
  void displayEnd() {
    endScreen();
  }
  //--------------------------------------------
  void buttonPressed() {
    if (mouseX > buttonX && mouseX < buttonX + buttonLength && mouseY > buttonY && mouseY < buttonY + buttonHeight) {
      overButton = true;
    }
    else {
      overButton = false; 
    }
  }
  
  void endScreen() {
    //end screen stuff 
  }
  
  void button() {
    buttonPressed();
    
    if (overButton == true && mousePressed) {
      state = 1;
    }
    else if ( overButton == true) {
      fill(163);
    }
    else {
      fill(255);
    }
    rect(buttonX,buttonY, buttonLength,buttonHeight);
    
  }
  
  
  
  
  
  
  
}