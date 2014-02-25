shapes[][] grid;
int cols = 10;
int rows = 20;
PFont fontOne; //init font
PFont fontTwo; //ingame font
boolean mainMenu = true; //check for main menu drawing
boolean optionsMenu; //check for options menu drawing
boolean play; //checks for play (game starts)
//PSound theme; //Tetris main theme
PImage tetrisLogo;

void setup() {
  frameRate(60);
  size(600, 600);
  //load font
  fontOne = loadFont("TrajanPro-Regular-100.vlw");
  //fontTwo = loadFont
  // ^ Will load later ^
  tetrisLogo = loadImage("tetris_logo.jpg");
  for(i = 0; i > cols; i++) {
      for(j = 0; j > cols; j++) {
   
    }    
  }
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
  }

  //if play button is clicked, the game starts
  if (play) {
    strokeWeight(5);
    stroke(255);
    line(370, 0, 370, 600);
  }
}

