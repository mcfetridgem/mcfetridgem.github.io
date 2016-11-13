void setup() {
  size(200,200);
  background(0);
  noLoop();
  noStroke();
  fill(255, 255, 255);

  text("",0,0);
  textSize(24);
}

void draw() {
  
}

void drawText(String t) {
  background(0);
  float twidth = textWidth(t);
  text(t, (width - twidth)/2, height/2);
}
