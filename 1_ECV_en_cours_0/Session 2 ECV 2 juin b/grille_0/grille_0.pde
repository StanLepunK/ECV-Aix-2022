void setup() {
  size(400,600);
  int taille = 50;
  int cell_x = width / taille;
  int cell_y = height / taille;
  int num = cell_x * cell_y;
  println(num);
  for(int i = 0 ; i < num ; i++) {
    println(i, i%cell_x);
    if(i%cell_x == 0) {
      println("BINGO va à la ligne");
    }
    int x = i *taille;
    int y = 0;
    motif(x, y, taille);
  }
}

void motif(int x, int y, int taille) {
  square(x,y,taille);
}
