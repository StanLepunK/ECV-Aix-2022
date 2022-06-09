import processing.pdf.*;

int num_band = 2;
int [] couleur;
int start_pos = 0;
String nom_du_fichier = "";

void setup() {
  size(400,600);
  colorMode(HSB,360,100,100,100);
  noStroke();
  impression();
}

void draw() {}

void keyPressed() {
  if(key == 'n') {
    println("nouvelle impression");
    impression();
  }
}

void bande_de_couleur(int couleur, int largeur) {
  fill(couleur);
  rect(start_pos, 0, largeur, height);
  start_pos = start_pos + largeur;
}

void rendu(int num) {
  start_pos = 0;
  int largeur = width / num;
  for(int i = 0 ; i < num ; i++) {
    bande_de_couleur(couleur[i],largeur);
  }
}

void creation_palette(int num) {
  for(int i = 0 ; i < num ; i++) {
    int hue = (int)random(g.colorModeX);
    couleur[i] = color(hue,100,100);
    println("couleur", i, couleur[i], "hue", hue);
  }
}


void impression() {
  nom_du_fichier = "rendu_"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".pdf";
  beginRecord(PDF, nom_du_fichier);
  int num_band = (int)random(3,17);
  couleur = new int[num_band];
  creation_palette(num_band);
  rendu(num_band);
  endRecord();
}
