void setup() {
  size(400,600);
  background(0);
  int pos_titre_x = width /2;
  int pos_titre_y = height /4;
  int titre_size = 40;
  nuage(pos_titre_y, titre_size, 10000);
  titre(pos_titre_x, pos_titre_y, titre_size);

}

void nuage(int pos_titre_y, int titre_size, int max) {
  stroke(255);
  for(int i = 0 ; i < max ; i++) {
    int x = (int)random(width);
    int y = (int)random(height);
    float epaisseur = map(abs(y - (pos_titre_y - (titre_size/2))), 0, height, 0.5, 30);
    // float epaisseur = map(abs(y - pos_titre_y), 0, height, 0, 10);
    strokeWeight(epaisseur);
    point(x,y);  
  }
}



void titre(int x, int y, int size) {
  textSize(size);
  textAlign(CENTER);
  text("Ecosystème",x,y);
}
  
