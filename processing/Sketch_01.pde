float max_distance;
float factor = 20;

void setup() {
  size(720, 480);
  background(200, 235, 250);
  smooth();
  noStroke();
  noCursor();
  noLoop();
  fill(255, 255, 255);

  max_distance = dist(0, 0, width, height);
  text("", 25, 25, width - 25, height - 25);
  textSize(36);
}

void draw() {
  background(200, 235, 250);
  fill(255, 255, 255);
  
  for(int i = 0; i <= width; i += factor) {
    for(int j = 0; j <= width; j += factor) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * (factor * 2.5);
      ellipse(i, j, size, size);
    }
  }
}

void drawText(String t) {
  background(200, 235, 250);
  fill(120, 120, 120);
  float twidth = textWidth(t);
  text(t, (width - twidth)/2, height/2);
}
