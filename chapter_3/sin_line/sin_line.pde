void setup() {
  size(500, 500);
  frameRate(24);
  smooth();
  background(155);
}

void draw() {
  float xstep = 1;
  float lastx = -999;
  float lasty = -999;
  float angle = 0;
  float y = 50;
  for (int x=20; x < 480; x += xstep) {
    float rad = radians(angle);
    y = 50 + (sin(rad) * 40);
    if (lastx > -999) {
      line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
    angle++;
  }
}
