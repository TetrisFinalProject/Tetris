int shapeRand;
int shapeType;

void newRandShape() {
  int shapeRand = (int)random(7);
  switch(shapeRand) {
  case 0:
    shapeType = 1; 
    break;
  case 1:
    shapeType = 2;
    break;
  case 2:
    shapeType = 3;
    break;
  case 3:
    shapeType = 4;
    break;
  case 4:
    shapeType = 5;
    break;
  case 5:
    shapeType = 6;
    break;
  case 6:
    shapeType = 7;
    break;
  }
}

class shapes {
  int x;
  int y;

  void drawShape() {
    if (shapeType == 1) {
      for(i = 5; i < 6; i++){
        for(j = 0; j < 4; j++){
          display.lineShape();
        }
    }
    if (shapeType == 2) {
    }
    if (shapeType == 3) {
    }
    if (shapeType == 4) {
    }
    if (shapeType == 5) {
    }
    if (shapeType == 6) {
    }
    if (shapeType == 7) {
    }
  }
}

