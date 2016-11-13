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

  //fill(0);
  text(s, 25, 25, width - 25, height - 25);

  for(int i = 0; i <= width; i += factor) {
    for(int j = 0; j <= width; j += factor) {
      float size = dist(mouseX, mouseY, i, j);
      size = size/max_distance * (factor * 2.5);
      ellipse(i, j, size, size);
    }
  }
}
