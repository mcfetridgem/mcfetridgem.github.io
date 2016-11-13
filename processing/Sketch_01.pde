float max_distance;
float factor = 20;

void setup() {
  size(500, 500);
  background(0, 50);
  smooth();
  //noLoop();
  noStroke();
  fill(255, 255, 255);

  max_distance = dist(0, 0, width, height);
  text("",0,0);
  textSize(24);
}

void draw() {
  background(0, 50);

  for(int i = 0; i <= width; i += factor) {
    for(int j = 0; j <= width; j += factor) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * (factor * 2.5);
      ellipse(i, j, size, size);
    }
  }
}

void drawText(String t) {
  //background(0);
  float twidth = textWidth(t);
  text(t, (width - twidth)/2, height/2);
}
