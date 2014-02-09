//init font
PFont fontOne;

//check for main menu drawing
boolean mainMenu = true;

//check for options menu drawing
boolean optionsMenu;

void setup() {
  frameRate(60);
  size(600, 600);
  //load font
  fontOne = loadFont("TrajanPro-Regular-100.vlw");
}

void draw() {
  background(0);
  fill(255);

  //main menu
  if (mainMenu) {
    textFont(fontOne);
    textAlign(CENTER);
    text("PLAY", 300, 200);
    text("OPTIONS", 300, 400);
    //main menu interactions
    if (mouseX >= 170 && mouseX <= 440 && mouseY >= 120 && mouseY <= 200) {
      fill(255, 255, 0);
      text("PLAY", 300, 200);
      if (mousePressed) {
        mainMenu = false;
      }
    }
    if (mouseX >= 45 && mouseX <= 545 && mouseY >= 320 && mouseY <= 400) {
      fill(255, 255, 0);
      text("OPTIONS", 300, 400);
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
  if (mainMenu == false) {
  }
}

