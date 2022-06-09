void setup() {
  size(400,600);
  background(0);
  int num = 20;
  repetition(num);
  titre();

}

void repetition(int max) {
  int inter_pos_hori = height / max;
  int inter_pos_verti = width / max;
  int inter_gris = 255 / max;
  for(int i = 0 ; i < max ; i++) {
    int ref = i + 1;
    int pos = ref * inter_pos_hori;
    int gris = ref * inter_gris;
    int ep = ref + 1; 
    ligne_horizontale(pos, gris, ep);
    pos = ref * inter_pos_verti;
    ligne_verticale(pos, gris, ep);
  }
}

void ligne_horizontale(int pos_y, int couleur, int epaisseur) {
  stroke(couleur);
  strokeWeight(epaisseur);
  line(0,pos_y, width,pos_y);
}

void ligne_verticale(int pos_x, int couleur, int epaisseur) {
  stroke(couleur);
  strokeWeight(epaisseur);
  line(pos_x, 0, pos_x,height);
}

void titre() {
  textSize(40);
  textAlign(CENTER);
  int text_pos_x = width /2;
  int text_pos_y = height /4;
  text("Ecosystème",text_pos_x,text_pos_y);
}
  
