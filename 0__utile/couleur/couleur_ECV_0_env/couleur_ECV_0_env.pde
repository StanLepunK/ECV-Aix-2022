void setup() {
  size(400,600);
  println("valeur max par défault", g.colorModeX, g.colorModeY, g.colorModeZ, g.colorModeA);
  println("Environement par défault", g.colorMode);
  colorMode(HSB,360,100,100,100); // changer chaque valeur spécifiquement
  println("nouvelles valeures max", g.colorModeX, g.colorModeY, g.colorModeZ, g.colorModeA);
  println("nouvel envirronement", g.colorMode);
  colorMode(RGB,255); // si une seules valeurs tout est changé
  println("nouvelles valeures max", g.colorModeX, g.colorModeY, g.colorModeZ, g.colorModeA);
  println("nouvel envirronement", g.colorMode);
}
