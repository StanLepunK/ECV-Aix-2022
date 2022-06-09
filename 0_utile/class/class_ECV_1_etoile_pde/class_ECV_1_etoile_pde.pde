Etoile star;

void setup() {
  size(400,600);
  background(0);
  int couleur = color(random(255));
  int taille = (int)random(width/6, width/ 2);
  int branches = 7;
  // initialisation
  star = new Etoile(couleur, taille, branches);
  // rendu
  star.show((int)random(width),(int)random(height));
}

void draw() {}

void mousePressed() {
  // nouveau rendu
  background(0);
  star.show((int)random(width),(int)random(height));
}

public class Etoile {
  int couleur;
  int diam;
  int num;
  PVector [] pts;
  
  Etoile(int couleur, int diam, int branches) {
    this.couleur = couleur;
    this.diam = diam;
    this.num = branches * 2;
    this.pts = new PVector[this.num];
    build();
  }
  
  private void build() {
    float pas = TAU / this.num;
    float angle = 0;
    for(int i = 0 ; i < this.pts.length ; i++) {
      int diam_def = this.diam;
      float x = cos(angle);
      float y = sin(angle);
      // créer le décalage pour créer un rythme étoilé :) pour ça le modulo n'est pas de trop
      if(i%2 == 0) {
        diam_def /= 2;
      }
      this.pts[i] = new PVector(x,y);
      this.pts[i].mult(diam_def);
      angle = angle + pas;
    }
  }
  
  public void show(int x, int y) {
    noStroke();
    fill(this.couleur);
    push();
    translate(x,y);
    beginShape();
    for(int i = 0 ; i < this.pts.length ; i++) {
      vertex(this.pts[i].x, this.pts[i].y);
    }
    vertex(this.pts[0].x, this.pts[0].y);
    endShape();
    pop();
  }
}
