import processing.pdf.*;

void setup() {
  size(400,600);
  beginRecord(PDF,"affiche.pdf");
  circle(width/2,height/2, 100);
  endRecord();
}
