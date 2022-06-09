PVector a;
PVector b;
PVector c;

void setup() {
  a = new PVector(random(width), random(height));
  b = new PVector(random(width), random(height));
  c = new PVector(random(width), random(height));
  
  size(400,600);
  beginShape();
  vertex(a.x, a.y);
  vertex(b.x, b.y);
  vertex(c.x, c.y);
  vertex(a.x, a.y); 
  endShape();
}


void draw() {
  a.set(mouseX, mouseY);
  beginShape();
  vertex(a.x, a.y);
  vertex(b.x, b.y);
  vertex(c.x, c.y);
  vertex(a.x, a.y); 
  endShape();
}
