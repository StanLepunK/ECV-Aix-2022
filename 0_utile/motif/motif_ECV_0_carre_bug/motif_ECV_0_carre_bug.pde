void setup() {
  size(400,600);
  background(255,0,0);
  int taille = 50;
  int cell_x = width / taille;
  int cell_y = height / taille;
  int max = cell_x * cell_y;
  
  int pos_x = 0;
  int pos_y = 0;
  
  for(int i = 0 ; i <= max ; i++) {
    push(); 
    translate(pos_x,pos_y);
    if(i%2 == 0) {
      motif_carre(taille,0);
    } else {
      motif_carre(taille,random(TAU));
    }
    
    pop();
    
    pos_x += taille;
    println(pos_x, pos_y, max);
    if(i > 0 && i%cell_x == 0) {
      pos_y += taille;
      pos_x = 0;
    }
  }
  
}

void motif_carre(int taille, float angle) {
  float x = 0;
  float y = 0;
  push();
  rotate(angle);
  square(x,y, taille);
  pop();
}
