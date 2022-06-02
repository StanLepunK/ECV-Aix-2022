void setup() {
  size(400,600);
  int taille = 50;
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
    motif(x, y, taille);
  }
}

void grille() {
}

void motif(int x, int y, int taille) {
  square(x,y,taille);
}
