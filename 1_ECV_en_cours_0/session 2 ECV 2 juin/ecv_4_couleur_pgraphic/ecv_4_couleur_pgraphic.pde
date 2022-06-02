
int couleur_a;
int couleur_b;
PGraphics pg;

void setup() {
  size(400,600);
  frameRate(5);
  pg = createGraphics(width,height);
  colorMode(HSB,360,100,100,100);
  background(0);
  couleur_a = color(360,100,100);
  couleur_b = color(50,100,100);
  // forme(300);
  pg_forme(300);
  image(pg,0,0);
}

void draw() {}
/*
void draw() {
  forme(600); 
}
*/



void mousePressed() {
  couleur_a = color(random(360),100,100);
  couleur_b = color(random(360),100,100);
  pg_forme(300);
  image(pg,random(width),random(height));
  
// forme(600); 
// image(g, mouseX,mouseY);
}

void pg_forme(int taille_max) {
  pg.beginDraw();
  pg.strokeWeight(5);
  pg.stroke(couleur_b);
  pg.fill(couleur_a);
  pg.circle(width/2,height/2, random(20,taille_max)); 
  
  pg.strokeWeight(10);
  pg.stroke(couleur_a);
  pg.fill(couleur_b);
  pg.circle(width/2,random(height), random(20,taille_max)); 
  pg.endDraw();
}


void forme(int taille_max) {
  strokeWeight(5);
  stroke(couleur_b);
  fill(couleur_a);
  circle(width/2,height/2, random(20,taille_max)); 
  
  strokeWeight(10);
  stroke(couleur_a);
  fill(couleur_b);
  circle(width/2,random(height), random(20,taille_max)); 
}
