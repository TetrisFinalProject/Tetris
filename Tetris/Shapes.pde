int[] shapes = new int[6];
int shapeRand;
int shapeType;

class newShape {
  void newRandShape() {
    int shapeRand = (int)random(6);
    switch(shapeRand) {
    case 0: 
      drawShape(1);
      break;
    case 1: 
      drawShape(2);
      break;
    case 2: 
      drawShape(3);
      break;
    case 3: 
      drawShape(4);
      break;
    case 4: 
      drawShape(5);
      break;
    case 5: 
      drawShape(6);
      break;
    }
  }
}

void drawShape() {
  if(shapeType == 1)
}

