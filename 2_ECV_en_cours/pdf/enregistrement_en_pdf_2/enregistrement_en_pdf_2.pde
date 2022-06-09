import processing.pdf.*;
boolean print_is = false;

void setup() {
  size(400,600);
}

void draw() {
  if(print_is == true) {
    beginRecord(PDF,"affiche.pdf");
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
