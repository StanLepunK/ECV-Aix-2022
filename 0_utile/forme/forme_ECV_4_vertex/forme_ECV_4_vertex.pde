void setup() {
  size(400,600);
  beginShape();
  vertex(50,100);
  vertex(30,40);
  vertex(300,100);
  // endShape(CLOSE);
  
  // ou pour fermer on rappel le dernier point
  vertex(50,100); 
  endShape();
}
