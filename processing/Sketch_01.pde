int moveRight = width / 2;
int moveLeft = width / 2;
float speed = 3;

void setup() {
  size(720, 480);
  //size(screen.width, screen.height);
  //fullScreen();
  //surface.setResizable(true);
  
  ellipseMode(CENTER);
  stroke(255);
  fill(255);
  
  // frameRate(30);
  noCursor();
}

void draw() {
  background(200, 235, 250);
  
  float distance = height * .5;
  
  float mX = mouseX;
  float mY = mouseY;
  
  float height1 = height * .33;
  float height2 = height * .66;

  float d1 = dist(moveRight, height1, moveLeft, height2);
  float d2 = dist(mX, mY, moveRight, height1);
  float d3 = dist(mX, mY, moveLeft, height2);
  
  if (d1 < distance) {
    line(moveRight, height1, moveLeft, height2);
  }

  if (d2 < distance) {
    line(mX, mY, moveRight, height1);
  }
  
  if (d3 < distance) {
    line(mX, mY, moveLeft, height2);
  }
  
  ellipse(moveRight, height1, 10, 10);
  ellipse(moveLeft, height2, 10, 10);
  ellipse(mX, mY, 7, 7);
  
  moveRight += speed;
  moveLeft -= speed;
  
  if (moveRight >= width) {
    moveRight = 0;
  }
  
  if (moveLeft <= 0) {
    moveLeft = width;
  }
}
