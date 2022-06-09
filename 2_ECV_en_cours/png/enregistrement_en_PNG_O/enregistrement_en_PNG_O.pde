boolean print_is = false;

void setup() {
  size(400,600);
}

void draw() {
  String nom_de_fichier = "affiche"+year()+"_"+month()+"_"+day()+"_"+hour()+"_"+minute()+"_"+second()+".png";
  if(print_is == true) {
    save(nom_de_fichier);
    print_is = false;
  }
  projet();
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
