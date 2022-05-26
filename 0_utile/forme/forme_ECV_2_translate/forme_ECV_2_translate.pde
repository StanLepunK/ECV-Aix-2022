void setup() {
  size(400,600);
  int x = width / 2;
  int y = height / 2;
  int taille = 100;
  // arrière plan
  // arrière plan
  background(0);
  // aspect des formets
  fill(125);
  stroke(255);
  strokeWeight(5);
  // dessin des formes
  
  triangle(120, 300, 232, 80, 344, 300);
  
  push();
  int taille_rect = taille *3;
  translate(-taille_rect / 2, -taille_rect / 2);
  rect(x,y, taille_rect, taille_rect *0.8);
  pop();
  
  int taille_square = taille *2;
  push();
  translate(-taille_square / 2, -taille_square / 2);
  square(x,y, taille_square);
  pop();
  
  ellipse(x,y,taille, taille *2);
  circle(x,y, taille / 2);
  fill(0);
  arc(x,y, taille/2, taille/2, 0, PI, CLOSE);
  point(x /3, y / 3);
  line(x,y, x*2, y * 2);
}
