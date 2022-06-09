void setup() {
  size(400,600);
  background(0);
  titre();
  int max = 30;
  int inter_pos = height / max;
  int inter_gris = 255 / max;
  for(int i = 0 ; i < max ; i++) {
    int ref = i + 1;
    int po = ref * inter_pos;
    int gr = ref * inter_gris;
    int ep = ref + 1; 
    ligne(po, gr, ep);
  }
}

void ligne(int pos_y, int gris, int epaisseur) {
  stroke(gris);
  strokeWeight(epaisseur);
  int line_pos_y = pos_y;
  line(0,line_pos_y, width,line_pos_y);
}

void titre() {
  textSize(40);
  textAlign(CENTER);
  int text_pos_x = width /2;
  int text_pos_y = height /4;
  text("Ecosystème",text_pos_x,text_pos_y);
}
  
