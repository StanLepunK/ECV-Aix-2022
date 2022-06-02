
int couleur_a;
int couleur_b;

void setup() {
  size(400,600);
  frameRate(5);
  colorMode(HSB,360,100,100,100);
  background(0);
  couleur_a = color(360,100,100);
  couleur_b = color(50,100,100);
  forme(300);
}

void draw() {
  forme(600); 
}

void mousePressed() {
  couleur_a = color(random(360),100,100);
  couleur_b = color(random(360),100,100); 
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
