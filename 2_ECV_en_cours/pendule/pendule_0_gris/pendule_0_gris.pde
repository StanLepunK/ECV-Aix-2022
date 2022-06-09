void setup() {
  size(400,600);
  // frameRate(12);
}

void draw() {
  println("frameCount", frameCount);
  float sin_valeur = sin(frameCount * 0.1);
  println("sin frameCount", sin_valeur);
  float gris = abs(sin_valeur) * 255;
  background(gris);
}
