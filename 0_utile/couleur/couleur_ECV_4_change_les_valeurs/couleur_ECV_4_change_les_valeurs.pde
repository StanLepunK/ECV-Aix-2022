int couleur_a = color(10,100,100);
int couleur_b = color(60,100,100);
  
void setup() {
  // essayer de faire que ce soit rouge et jaune...
  size(400,600);
  colorMode(HSB,360,100,100,100);
  noStroke();
  println("couleur A", couleur_a);
  println("couleur B", couleur_b);
}

void draw() {
  fill(couleur_a);
  rect(0, 0, width/2, height);

  fill(couleur_b);
  rect(width/2,0, width/2, height);
}
  
void keyPressed() {
  int hue = (int)random(g.colorModeX);
  couleur_a = color(hue,100,100);
  println("couleur A", couleur_a, "hue", hue);
  
  hue = (int)random(g.colorModeX);
  couleur_b = color(hue,100,100);
  println("couleur B", couleur_b, "hue", hue);
}
