void setup() {
  size(400,600);
}

void draw() {
  float rouge = abs(sin(frameCount * 0.01)) * 255;
  float vert = abs(sin(frameCount * 0.02)) * 255;
  float bleu = abs(sin(frameCount * 0.03)) * 255;
  
  background(rouge, vert, bleu);
  strokeWeight(10);
  stroke(bleu, rouge,vert);
  fill(vert, bleu,rouge);
  circle(width/2, height/2, 100);

  circle(width/2, height/3, 100);
}
