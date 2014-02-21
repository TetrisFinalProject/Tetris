PFont fontOne; //init font
PFont fontTwo; //ingame font
boolean mainMenu = true; //check for main menu drawing
boolean optionsMenu; //check for options menu drawing
boolean colorMenu;
boolean play; //checks for play (game starts)
//PSound theme; //Tetris main theme
PImage tetrisLogo;

void setup() {
  frameRate(60);
  size(600, 600);
  //load font
  fontOne = loadFont("TrajanPro-Regular-100.vlw");
  tetrisLogo = loadImage("tetris_logo.jpg");
}

void draw() {
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
    text("COLOR", 300, 200);
    if (mouseX >= 170 && mouseX <= 440 && mouseY >= 120 && mouseY <= 200) {
      fill(255, 100, 0);
      text("COLOR", 300, 200);
      if(mousePressed) {
       colorMenu = true; 
      }
    }
  }

  //if play button is clicked, the game starts
  if (play) {
    line(10, 10, 100, 100);
  }
  
  if (colorMenu) {
    
  }
}

