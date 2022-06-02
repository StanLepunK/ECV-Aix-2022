void setup() {
  size(400,600);
  background(255,0,0);
  grille(0,0);
}

/*
void draw() {
  background(255,0,0);
  grille(mouseX, mouseY);
}
*/

void grille(int x, int y) {
  int taille = 50;
  int cell_x = width / taille;
  int cell_y = height / taille;
  int max = cell_x * cell_y;
  
  int pos_x = 0;
  int pos_y = 0;
  
  int offset_x = taille/2 + x;
  int offset_y = taille/2 + y;
  
  for(int i = 1 ; i <= max ; i++) {
    push();
    translate(pos_x + offset_x,pos_y + offset_y);
    if(i%2 == 0) {
      motif_carre(taille,0);
    } else {
      motif_carre(taille,random(TAU));
    }
    pop();
    
    pos_x += taille;
    if(i%cell_x == 0) {
      pos_y += taille;
      pos_x = 0;
    }
  }
}

void motif_carre(int taille, float angle) {
  float x = taille/2;
  float y = taille/2;
  push();
  rotate(angle);
  translate(-x,-y);
  square(0,0, taille);
  pop();
}
