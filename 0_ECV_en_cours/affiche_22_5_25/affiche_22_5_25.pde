String super_0 = "SUPER";
String machine_0 = "MACHINE";
String title = super_0 + " " + machine_0;
String sous_titre = "ZIGGY";
PFont ma_typo;


void setup() {
  size(400,600);
  background(100);
  affichage_image();
  push();
  translate(width/2,height/3);
  rotate(PI/3);
  affichage_text();
  pop();
  
  push();
  translate(width/3,height/2);
  rotate(PI/2);
  affichage_text();
  pop();
}
