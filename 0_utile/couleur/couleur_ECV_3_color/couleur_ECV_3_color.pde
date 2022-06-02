void setup() {
  // essayer de faire que ce soit rouge et jaune...
  size(400,600);
  colorMode(HSB,360,100,100,100);
  noStroke();
  
  int couleur_a = color(10,100,100);
  int couleur_b = color(60,100,100);
  
  fill(couleur_a);
  rect(0, 0, width/2, height);

  fill(couleur_b);
  rect(width/2,0, width/2, height);
}
