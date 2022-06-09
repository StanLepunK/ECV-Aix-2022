float ax, ay;
float bx, by;
float cx, cy;

void setup() {
  ax = random(width);
  ay = random(height);
  bx = random(width);
  by = random(height);
  cx = random(width);
  cy = random(height);
  
  size(400,600);
  beginShape();
  vertex(ax, ay);
  vertex(bx, by);
  vertex(cx, cy);
  vertex(ax, ay); 
  endShape();
}
