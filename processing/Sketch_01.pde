void setup() {
  size(200,200);
  //noLoop();
  noStroke();
  fill(0,0,0);

  text("",0,0);
  textSize(24);
}

void draw() {
  background(0);
}

void drawText(String t)
  {
  float twidth = textWidth(t);
  text(t, (width - twidth)/2, height/2);
}
