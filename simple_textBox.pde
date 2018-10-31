Canvas c;

void setup() {
  //size(480, 960);
  fullScreen();
  
  frameRate(10);
  
  c = new Canvas("A4");
}
void draw() {
  background(50);
  
  c.display();
}
