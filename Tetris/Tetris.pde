int[] shapes = new int[6]; //the int array
PFont fontOne; //init font
PFont fontTwo; //ingame font
boolean mainMenu = true; //check for main menu drawing
boolean optionsMenu; //check for options menu drawing
boolean play; //checks for play (game starts)
//PSound theme; //Tetris main theme
PImage tetrisLogo;
<<<<<<< HEAD
int shapeRand;
int shapeType;
=======
int shapeRand = (int)random(6);
>>>>>>> 56f57e6014c8b06b68fa4f8645e570b7a69ec221

void setup() {
  frameRate(60);
  size(600, 600);
  //load font
  fontOne = loadFont("TrajanPro-Regular-100.vlw");
  //fontTwo = loadFont
  // ^ Will load later ^
  tetrisLogo = loadImage("tetris_logo.jpg");
}

void draw() {
  newShape.genShape();
  background(0);
  fill(255);

  //main menu
  if (mainMenu) {
    imageMode(CENTER);
    image(tetrisLogo, 300, 100);
    textFont(fontOne);
    textAlign(CENTER);
    text("PLAY", 300, 300);
    text("OPTIONS", 300, 500);
    //main menu interactions
    if (mouseX >= 170 && mouseX <= 440 && mouseY >= 220 && mouseY <= 300) {
      fill(255, 100, 0);
      text("PLAY", 300, 300);
      if (mousePressed) {
        mainMenu = false;
        play = true;
      }
    }
    if (mouseX >= 45 && mouseX <= 545 && mouseY >= 420 && mouseY <= 500) {
      fill(255, 100, 0);
      text("OPTIONS", 300, 500);
      if (mousePressed) {
        mainMenu = false;
        optionsMenu = true;
      }
    }
  }

  //if options option is clicked, the options menu opens
  if (optionsMenu) {
<<<<<<< HEAD
=======
    text("COLOR", 300, 200);
    if (mouseX >= 170 && mouseX <= 440 && mouseY >= 120 && mouseY <= 200) {
      fill(255, 100, 0);
      text("COLOR", 300, 200);
      if (mousePressed) {
        colorMenu = true;
      }
    }
>>>>>>> 56f57e6014c8b06b68fa4f8645e570b7a69ec221
  }

  //if play button is clicked, the game starts
  if (play) {
<<<<<<< HEAD
    strokeWeight(5);
    stroke(255);
    noFill();
    rect(0, 0, 370, 600);
  }
}

class newShape {
  void newRandShape() {
    float shapeRand = (int)random(6);
  }
  void checkShape() {
    switch(shapeRand) {
      case 0: shapeType = 1;
      case 1: shapeType = 2;
      case 2: shapeType = 3;
      case 3: drawshape(3);
      case 4:
      case 5:
    } 
  }
}

=======
    line(10, 10, 100, 100);
  }

  if (colorMenu) {
    text("GREYSCALE", 300, 200);
    text("COLORED", 300, 400);
  }
}

static class newShape {
  
  static void genShape() {
  switch(shapeRand) {
   case 0: print("swag");
  break; 
  }
    
    
  }
}
>>>>>>> 56f57e6014c8b06b68fa4f8645e570b7a69ec221
