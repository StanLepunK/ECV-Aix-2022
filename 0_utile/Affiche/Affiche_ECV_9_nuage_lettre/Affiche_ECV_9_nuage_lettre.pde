void setup() {
  size(400,600);
  background(0);
  int pos_titre_x = width /2;
  int pos_titre_y = height /4;
  int titre_size = 40;
  nuage_lettre(pos_titre_y, titre_size, 1000);
  titre(pos_titre_x, pos_titre_y, titre_size);

}

void nuage_lettre(int pos_titre_y, int titre_size, int max) {
  stroke(255);
  for(int i = 0 ; i < max ; i++) {
    int x = (int)random(width);
    int y = (int)random(height);
    float epaisseur = map(abs(y - (pos_titre_y - (titre_size/2))), 0, height, 0.5, 60);
    // https://www.w3schools.com/html/html_charset.asp
    textSize(epaisseur);
    // ou 33 est la premère lettre qui peut-être imprimé
    // et 122 la dernière lettre à pouvoir l'^être.
    char letter = (char)random(33, 122);
    text(letter, x,y);  
  }
}


void titre(int x, int y, int size) {
  textSize(size);
  textAlign(CENTER);
  text("Ecosystème",x,y);
}
  
