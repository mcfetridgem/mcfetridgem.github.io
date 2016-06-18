int moveRight = width / 2;
int moveLeft = width / 2;
float distance = 300.0;
float speed = 5;

void setup() {
  //size(1280, 720);
  fullScreen();
  
  ellipseMode(CENTER);
  stroke(255);
  fill(255);
  
  // frameRate(30);
  noCursor();
}

void draw() {
  background(200, 235, 250);
  
  float mX = mouseX;
  float mY = mouseY;

  float d1 = dist(moveRight, 300, moveLeft, 420);
  float d2 = dist(mX, mY, moveRight, 300);
  float d3 = dist(mX, mY, moveLeft, 420);
  
  if (d1 < distance) {
    line(moveRight, 300, moveLeft, 420);
  }

  if (d2 < distance) {
    line(mX, mY, moveRight, 300);
  }
  
  if (d3 < distance) {
    line(mX, mY, moveLeft, 420);
  }
  
  ellipse(moveRight, 300, 25, 25);
  ellipse(moveLeft, 420, 25, 25);
  ellipse(mX, mY, 15, 15);
  
  moveRight += speed;
  moveLeft -= speed;
  
  if (moveRight >= width) {
    moveRight = 0;
  }
  
  if (moveLeft <= 0) {
    moveLeft = width;
  }
}
