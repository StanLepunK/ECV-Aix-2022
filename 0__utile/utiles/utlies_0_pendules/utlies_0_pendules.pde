void setup() {
  size(400,600, P2D);
}

void draw() {
  float sin_brut = sin(frameCount);
  float sin_doux = sin(frameCount * 0.01);
  float marge = 20;
  float pendule_brut = map(sin_brut, -1, 1, marge, width - marge);
  float pendule_doux = map(sin_doux, -1, 1, marge, width - marge);
  println("compte", frameCount);
  println("brut", sin_brut, "doux", sin_doux);
  println("pendule brut", pendule_brut);
  println("pendule doux", pendule_doux);
  
  // background(0, 0, 0, 20);
  noStroke();
  fill(0,20);
  rect(0,0,width,height);
  stroke(255);
  pendule(pendule_doux, sin_doux);
}


void pendule(float val, float trig_val) {
  float marge = 40;
  float start_x = width/2;
  float start_y = marge;
  float end_x = val;
  
  float range = 30;
  float verticale_var = abs(trig_val) * range;
  float end_y = height - marge - verticale_var;
  
  strokeWeight(2);
  line(start_x, start_y, end_x, end_y);
  strokeWeight(20);
  point(start_x, start_y);
  point(end_x, end_y);
}
