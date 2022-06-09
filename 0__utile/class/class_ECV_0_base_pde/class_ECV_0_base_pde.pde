MaClasse mc;

void setup() {
  size(400,600);
  int couleur = color(random(255));
  int taille = (int)random(width/6, width/ 2);
  // initialisation
  mc = new MaClasse(couleur, taille);
  // rendu
  mc.carre((int)random(width),(int)random(height));
}

void draw() {}


void mousePressed() {
  // nouveau rendu
  background(0);
  mc.carre((int)random(width),(int)random(height));
}

class MaClasse {
  int couleur;
  int taille;
  MaClasse(int couleur, int taille) {
    this.couleur = couleur;
    this.taille = taille;
  }
  
  void carre(int x, int y) {
    noStroke();
    fill(couleur);
    square(x,y,taille);
  }
}
