
int couleur_a;
int couleur_b;

void setup() {
  size(400,600);
  colorMode(HSB,360,100,100,100);
  background(0);
  couleur_a = color(360,100,100);
  couleur_b = color(50,100,100);
  strokeWeight(5);
  stroke(couleur_b);
  fill(couleur_a);
  circle(width/2,height/2, 100); 
  
  strokeWeight(10);
  stroke(couleur_a);
  fill(couleur_b);
  circle(width/2,height/3, 200); 
}

void draw() {}

void mousePressed() {
  background(0);
  strokeWeight(5);
  stroke(couleur_b);
  fill(couleur_a);
  circle(width/2,height/2, random(20,200)); 
  
  strokeWeight(10);
  stroke(couleur_a);
  fill(couleur_b);
  circle(width/2,random(height), random(20,200)); 
}

void forme() {
}
