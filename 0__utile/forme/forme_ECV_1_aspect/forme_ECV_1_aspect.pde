void setup() {
  size(400,600);
  int x = width / 2;
  int y = height / 2;
  int taille = 100;
  // arrière plan
  background(0);
  // aspect des formets
  fill(125);
  stroke(255);
  strokeWeight(5);
  // dessin des formes
  rect(x,y, taille *2, taille * 2);
  square(x,y, taille);
  ellipse(x,y,taille, taille *2);
  circle(x,y, taille / 2);
  point(x /2, y / 2);
  line(x,y, x*2, y * 2);
}
