ArrayList<PVector> snakelichaam = new ArrayList();
PVector apple = new PVector(0, 1 );
int blockSize = 40;
int direction = 1;

final int RECHTS = 1;
final int BENEDEN = 2;
final int LINKS = 3;
final int BOVEN = 4;

void setup() {
  frameRate(7);
  size(800, 800);
  background(52, 235, 85);

  snakelichaam.add(new PVector(2, 1));
  snakelichaam.add(new PVector(1, 1));
  snakelichaam.add(new PVector(0, 1));
  snakelichaam.add(new PVector(0, 0));
}
void draw() {
  background(52, 235, 85);

  drawApple();
  drawSnake();



  moveSnake(direction);
  appleeten();
  snakeheadcollision();
  headwallcollision();
}

void moveSnake(int direction) {
  PVector head = snakelichaam.get(0);
  PVector newHead = null;



  switch (direction) {
  case RECHTS:
    newHead = new PVector(head.x + 1, head.y);
    if (newHead.x == (width/blockSize)) {
      newHead.x = 0;
    }
    break;

  case BENEDEN:
    newHead = new PVector(head.x, head.y + 1);
    if (newHead.y == (height/blockSize)) {
      newHead.y = 0;
    }
    break;

  case LINKS:
    newHead = new PVector(head.x - 1, head.y);
    if (newHead.x == -1) {
      newHead.x = (width/blockSize) - 1;
    }
    break;

  case BOVEN:
    newHead = new PVector(head.x, head.y - 1);
    if (newHead.y == -1) {
      newHead.y = (height/blockSize) - 1;
    }
    break;
  }









  snakelichaam.add(0, newHead);
  snakelichaam.remove(snakelichaam.size() - 1);
}

void headwallcollision() {
  PVector head = snakelichaam.get(0);
}



void appleeten() {
  PVector head = snakelichaam.get(0);

  if (head.x == apple.x && head.y == apple.y) {
    apple = new PVector(int(random(0, width / blockSize)), int(random(0, height / blockSize)));
    snakelichaam.add(new PVector(snakelichaam.get(snakelichaam.size() - 1).x, snakelichaam.get(snakelichaam.size() - 1).y));
  }
}


void snakeheadcollision() {

  PVector head = snakelichaam.get(0);
  for (int i = 1; i < snakelichaam.size(); i++) {
    PVector bodyPart = snakelichaam.get(i);


    if (head.equals(bodyPart)) {
      println("Game over ");
      resetgame();
      break;
    }
  }
}

void resetgame() {
  snakelichaam.clear();
  snakelichaam.add(new PVector(2, 1));
  snakelichaam.add(new PVector(1, 1));
  snakelichaam.add(new PVector(0, 1));
  snakelichaam.add(new PVector(0, 0));

  direction = 1;
  apple = new PVector (0, 0);
}

void drawApple() {
  fill(255, 0, 0);
  rect(apple.x * blockSize, apple.y * blockSize, blockSize, blockSize);
}



void drawSnake() {
  for (int i = 0; i < snakelichaam.size(); i++) {
    PVector positie = snakelichaam.get(i);
    if (i == 0) {
      fill(112, 177, 212);
    } else {
      fill(29, 105, 219);
    }
    rect(positie.x * blockSize, positie.y * blockSize, blockSize, blockSize);
  }
}
void keyPressed() {
  if (key == 'd' || key == 'D') {
    if (direction != LINKS) {
      direction = RECHTS;
    }
  }
  if (key == 's' || key == 'S') {
    if (direction != BOVEN) {
      direction = BENEDEN;
    }
  } else if (key == 'a' || key == 'A') {
    if (direction != RECHTS) {
      direction = LINKS;
    }
  } else if (key == 'w' || key == 'W') {

    if (direction != BENEDEN) {
      direction = BOVEN;
    }
  }
}
