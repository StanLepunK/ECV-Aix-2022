void setup() {
  // essayer de faire que ce soit rouge et jaune...
  size(400,600);
  noStroke();
  
  fill(255,0,0);
  rect(0, 0, width/2, height);

  fill(0,255,255);
  rect(width/2,0, width/2, height);
}
