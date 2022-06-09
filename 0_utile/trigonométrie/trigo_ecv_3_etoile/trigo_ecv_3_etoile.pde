void setup() {
  size(400,600);
  strokeWeight(1);
  int points = 10;
  int dif = width / 6;
  int diam = width / 3;
  push();
  translate(width/2, height/2);
  etoile(points, diam, dif);
  pop();
  
}

// conception d'une étoile en position absolue.
void etoile(int num, int diam, int dif) {
  PVector [] pts = new PVector[num];
  float pas = TAU / num;
  float angle = PI /10;
  
  // construction des points
  for(int i = 0 ; i < pts.length ; i++) {
    int diam_def = diam;
    float x = cos(angle);
    float y = sin(angle);
    // créer le décalage pour créer un rythme étoilé :) pour ça le modulo n'est pas de trop
    if(i%2 == 0) {
      diam_def -= dif;
    }
    // option 1
    // x = x * diam;
    // y = y * diam;
    // option 2
    // x *= diam;
    // y *= diam;
    pts[i] = new PVector(x,y);
    // option 3
    pts[i].mult(diam_def);
    angle = angle + pas;
  }
  
  // dessiner les traits
  strokeWeight(1);
  beginShape();
  for(int i = 0 ; i < pts.length ; i++) {
    vertex(pts[i].x, pts[i].y);
  }
  vertex(pts[0].x, pts[0].y);
  endShape();
  
  // dessinner les points
  strokeWeight(5);
  for(int i = 0 ; i < pts.length ; i++) {
    point(pts[i].x, pts[i].y);
  }
}
