void setup() {
  size(400,600);
  int taille = 50;
  push();
  translate(-taille, -taille);
  grille(taille);
  pop();
}

void grille(int taille) {
  int cell_x = width / taille;
  int cell_y = height / taille;
  int num = cell_x * cell_y;
  int y = 0;
  int x = 0;
  for(int i = 0 ; i < num ; i++) {
    x++;
    if(i%cell_x == 0) {
      println("BINGO va à la ligne");
      y += taille;
      x = 0;
    }
    x = x + taille;
    if(i%2 == 0) {
      println("SOIRÉE DISCO");
      push();
      translate(x,y);
      rotate(PI/3);
      motif(0, 0, taille);
      pop();
    } else {
      motif(x, y, taille);
    }
  }
}

void motif(int x, int y, int taille) {
  square(x,y,taille);
}
