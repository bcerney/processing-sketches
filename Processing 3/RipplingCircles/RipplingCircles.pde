Circle[] circles = new Circle[200];


void setup(){
  size(800,600);
  background(255); // set background color to white
  
  for (int i = 0; i < circles.length; i++) {
    circles[i] = new Circle();
  }
}

void draw(){
    for (int i = 0; i < circles.length; i++) {
    circles[i].update();
    circles[i].show();
  }
}