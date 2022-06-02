void setup() {
  size(400,400);
}

void draw() {}

void mousePressed() {
  background(0);
  push();
  translate(mouseX,mouseY);
  nuage(30, 10);
  pop();
}


void nuage(int num, int taille) {
  int c = color(255);
  noStroke();
  fill(c);
  for(int i = 0 ; i < num ; i++) {
    // int taille = 50;
    float x = random(-taille, taille);
    float y = random(-taille, taille);
    ellipse(x,y,taille,taille/2);
  }
}
