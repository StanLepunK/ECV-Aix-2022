int num_band = 8;
int [] couleur = new int[num_band];
int start_pos = 0;

void setup() {
  size(400,600);
  colorMode(HSB,360,100,100,100);
  noStroke();
  println("setup()");
  printArray(couleur);
}

void draw() {
  start_pos = 0;
  int largeur = width / num_band;
  for(int i = 0 ; i < num_band ; i++) {
    bande_de_couleur(couleur[i],largeur);
  }
}
  
void mousePressed() {
  // take care to send value in the range of the colorMode
  palette(0,50, 50,100, 90,100);
  
}

void palette(int hue_min, int hue_max, int sat_min, int sat_max, int bri_min, int bri_max) {
  for(int i = 0 ; i < num_band ; i++) {
    int hue = (int)random(hue_min, hue_max);
    int sat = (int)random(sat_min, sat_max);
    int bri = (int)random(bri_min, bri_max);
    couleur[i] = color(hue,sat,bri);
    println("couleur", i, couleur[i]);
    println("hue", hue);
    println("saturation", sat);
    println("brightness", bri);
  }
}

void bande_de_couleur(int couleur, int largeur) {
  fill(couleur);
  rect(start_pos, 0, largeur, height);
  start_pos = start_pos + largeur;
}
