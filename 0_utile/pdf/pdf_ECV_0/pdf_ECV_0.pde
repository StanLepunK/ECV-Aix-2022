import processing.pdf.*;

int num_band = 8;
int [] couleur = new int[num_band];
int start_pos = 0;
String nom_du_fichier = "rendu_"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".pdf";

void setup() {
  size(400,600, PDF, nom_du_fichier);
  colorMode(HSB,360,100,100,100);
  noStroke();
  creation_palette();
  rendu();
  println("et voilà");
  exit();
}



void bande_de_couleur(int couleur, int largeur) {
  fill(couleur);
  rect(start_pos, 0, largeur, height);
  start_pos = start_pos + largeur;
}

void rendu() {
  start_pos = 0;
  int largeur = width / num_band;
  for(int i = 0 ; i < num_band ; i++) {
    bande_de_couleur(couleur[i],largeur);
  }
}

void creation_palette() {
  for(int i = 0 ; i < num_band ; i++) {
    int hue = (int)random(g.colorModeX);
    couleur[i] = color(hue,100,100);
    println("couleur", i, couleur[i], "hue", hue);
  }
}
