float max_distance;
float factor = 24;
String s = System.getProperty("user.name");

PFont font;

void setup() {
  size(720, 480); 
  smooth();
  noStroke();
  fill(255, 255, 255);
  max_distance = dist(0, 0, width, height);
  
  font = createFont("Arial Bold", 48);
  textSize(48);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(200, 235, 250);
  text(s, 25, 25, width - 25, height - 25);
}
