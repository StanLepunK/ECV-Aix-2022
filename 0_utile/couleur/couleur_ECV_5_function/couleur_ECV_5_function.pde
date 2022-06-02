int couleur_a = color(10,100,100);
int couleur_b = color(60,100,100);
int start_pos = 0;
  
void setup() {
  // essayer de faire que ce soit rouge et jaune...
  size(400,600);
  colorMode(HSB,360,100,100,100);
  noStroke();
  println("couleur A", couleur_a);
  println("couleur B", couleur_b);
}

void draw() {
  start_pos = 0;
  bande_de_couleur(couleur_a, width / 2);
  bande_de_couleur(couleur_b, width / 2);
}
  
void keyPressed() {
  int hue = (int)random(g.colorModeX);
  couleur_a = color(hue,100,100);
  println("couleur A", couleur_a, "hue", hue);
  
  hue = (int)random(g.colorModeX);
  couleur_b = color(hue,100,100);
  println("couleur B", couleur_b, "hue", hue);
}


void bande_de_couleur(int couleur, int largeur) {
  fill(couleur);
  rect(start_pos, 0, largeur, height);
  start_pos = start_pos + largeur;
}
