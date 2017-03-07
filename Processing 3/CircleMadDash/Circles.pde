public class Circles {

  float x;
  float y;
  float widthAndHeight;
  float easing = 0.05;

  float randomR;
  float randomG;
  float randomB;

  Circles() {
    x=random(800);
    y=random(600);
    widthAndHeight = random(50);

    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }

  void show() {
    fill(randomR, randomG, randomB); 
    stroke(0);
    ellipseMode(CENTER);

    ellipse(x, y, widthAndHeight, widthAndHeight);
  }

  void update() {

    x+=random(20);
    y+=random(20);

    if (x > 800 || y > 600) {
      x = random(800);
      y = random(600);
    }
  }
}