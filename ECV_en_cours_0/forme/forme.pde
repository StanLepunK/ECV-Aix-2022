void setup() {
  size(200, 300);
  // square(int x, int y, int taille);
  int x = 30;
  int y = 100;
  int taille = 40;

  square(taille,taille, taille);
  circle(x,x, x);
  rect(x,y, taille, taille *2);
  ellipse(y,y, taille, taille *2);

  strokeWeight(10);
  point(width/2,height/2);
  println(width, height);
}
