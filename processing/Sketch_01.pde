float max_distance;
float factor = 24;

PFont font;
String s = "Doink de Doink";

void setup() {
  size(720, 480); 
  smooth();
  noStroke();
  max_distance = dist(0, 0, width, height);
  
  font = createFont("Arial Bold", 48);
  textSize(48);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(51);

  for(int i = 0; i <= width; i += factor) {
    for(int j = 0; j <= width; j += factor) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * (factor * 2.5);
      ellipse(i, j, size, size);
    }
  }
}

void drawText(String t){
  float twidth = textWidth(t);
  text(t, (width - twidth) / 2, height / 2);
}
