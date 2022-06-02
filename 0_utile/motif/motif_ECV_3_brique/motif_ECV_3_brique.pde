void setup() {
  size(400,600);
  background(255,0,0);
  grille(0,0);
}

void grille(int x, int y) {
  int taille = 50;
  int cell_x = width / taille;
  int cell_y = height / taille;
  int max = cell_x * cell_y;
  
  int pos_x = 0;
  int pos_y = 0;
  
  int offset_x = taille/2 + x;
  int offset_y = taille/2 + y;
  
  int ligne_y = 0;
  
  for(int i = 1 ; i <= max ; i++) {
    push(); 
    translate(pos_x + offset_x,pos_y + offset_y);
    show_motif(i, ligne_y, taille);
    pop();   
    pos_x += taille;
    println(pos_x, pos_y, max);
    if(i%cell_x == 0) {
      ligne_y++;
      pos_y += taille;
      pos_x = 0;
    }
  }
}

void show_motif(int rank, int ligne, int taille) {
  if(ligne%2 == 0) {
    if(rank%2 == 0) {
      motif_brique(9,taille,0);
    } else {
      motif_brique(5,taille,PI /2);
    }
  } else {
    if(rank%2 == 0) {
      motif_brique(2,taille,PI /2);
    } else {    
      motif_brique(3,taille,0);
    }
  }
}

void motif_brique(int num, float taille, float angle) {
  float hauteur = taille / num;
  float x = taille/2;
  float y = taille/2;
  float abs_x = 0;
  float abs_y = 0;
  
  push();
  rotate(angle);
  translate(-x,-y);
  for(int i = 0 ; i < num ; i++) {
    rect(abs_x,abs_y,taille, hauteur);
    abs_y = abs_y + hauteur;
    // rect(x,y,taille, hauteur);
    // y = y + hauteur;
  }
  pop();
}
