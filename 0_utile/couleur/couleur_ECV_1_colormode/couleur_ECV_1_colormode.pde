void setup() {
  size(400,600);
}


void draw() {
  if(keyPressed) {
    colorMode(HSB, 360, 100, 100, 100);
  } else {
    colorMode(RGB, 255);
  }
  background(100,100,100);
}
