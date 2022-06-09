import processing.pdf.*;
boolean print_is = false;

void setup() {
  size(400,600);
}

void draw() {
  String nom_de_fichier = "affiche"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".pdf";
  if(print_is == true) {
    beginRecord(PDF,nom_de_fichier);
  }
  projet();
  if(print_is == true) {
    endRecord();
    print_is = false;
  }
}


void keyPressed() {
  if(key == 'p') {
    print_is = true;
  }
}



void projet() {
  noStroke();
  fill(random(255));
  circle(mouseX,mouseY, 100);
}
