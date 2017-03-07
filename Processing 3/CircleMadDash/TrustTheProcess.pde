Circles[] circles = new Circles[200];

float x=0;
float y=0;

float randomR = random(255);
float randomG = random(255);
float randomB = random(255);

void setup(){
  size(800,600);
  background(255); // set background color to white
  
  for (int i = 0; i < circles.length; i++) {
    circles[i] = new Circles();
  }
}

void draw(){
    for (int i = 0; i < circles.length; i++) {
    circles[i].update();
    circles[i].show();
  }
}