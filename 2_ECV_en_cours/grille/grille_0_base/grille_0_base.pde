void setup() {
  size(400,600);
  int offset_x = 20;
  int offset_y = 50;
  push();
  translate(offset_x,offset_y);
  grille(5,5);
  pop();
}

void draw() {
  push();
  translate(mouseX,mouseY);
  grille(5,5);
  pop();
}

void grille(int col, int row) {
  float step_x = width / col;
  float step_y = height / row;
  for(int i = 0 ; i < col ; i++) {
    for(int k = 0; k < row ; k++) {
      float x = i * step_x;
      float y = k * step_y;
      circle(x,y,100);
    }
  }
}
