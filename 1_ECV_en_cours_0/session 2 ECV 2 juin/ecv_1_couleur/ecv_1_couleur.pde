void setup() {
  size(600,600);
  println("mode", g.colorMode);
  println("rouge", g.colorModeX);
  println("vert", g.colorModeY);
  println("bleu", g.colorModeZ);
  println("alpha",g.colorModeA);
  int couleur = color(255,0,0);
  println("couleur", couleur);
  background(couleur);
  
  colorMode(HSB,360,100,100,100);
  
  println("mode", g.colorMode);
  println("hue", g.colorModeX);
  println("saturation", g.colorModeY);
  println("brightness", g.colorModeZ);
  println("alpha",g.colorModeA);
 
  background(360,100,100);
}

void draw() {
  float couleur = map(mouseX, 0, width, 0, 360);
  println("mouseX", mouseX, "couleur", couleur);
  background(couleur,100,100);
}
