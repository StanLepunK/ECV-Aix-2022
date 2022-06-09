PVector a;
PVector b;
PVector c;

void setup() {
  a = new PVector(random(width), random(height));
  b = new PVector(random(width), random(height));
  c = new PVector(random(width), random(height));
  
  size(400,600);
  // ma_forme_classique(a, b , c);
  ma_forme_liste(a, b , c);
}


void draw() {
  a.set(mouseX, mouseY);
  // ma_forme_classique(a, b , c);
  ma_forme_liste(a, b , c);
}


void ma_forme_classique(PVector aa, PVector bb, PVector cc) {
  beginShape();
  vertex(aa.x, aa.y);
  vertex(bb.x, bb.y);
  vertex(cc.x, cc.y);
  vertex(aa.x, aa.y); 
  endShape();
}


void ma_forme_liste(PVector ...point) {
  beginShape();
  for(int i = 0 ; i < point.length ; i++) {
    vertex(point[i].x, point[i].y); 
  }
  vertex(point[0].x, point[0].y); 
  endShape();
}
