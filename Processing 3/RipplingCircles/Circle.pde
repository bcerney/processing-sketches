class Circle {

  float x;
  float y;
  float wh;
  float widthHeightMax;

  float randomR;
  float randomG;
  float randomB;

  public Circle() {
    x=random(800);
    y=random(600);
    wh = 20;
    widthHeightMax = random(50,400);

    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }

  void show() {
    noFill();
    stroke(randomR, randomG, randomB);
    ellipseMode(CENTER);
    ellipse(x, y, wh, wh);
  }

  void update() {
    wh += 2;
    if (wh >= widthHeightMax) {
      x=random(800);
      y=random(600);
      wh = 0;
    }
  }
}