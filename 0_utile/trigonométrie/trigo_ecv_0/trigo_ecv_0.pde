void setup() {
  size(400,600);
  strokeWeight(5);
  int num = 20;
  // TAU est agale à 2 fois PI qui égale à 360°
  float step_angle = TAU / num;
  float final_angle = 0;
  float distance = height / 4;
  float center_x = width / 2;
  float center_y = height / 2;
  for(int i = 0 ; i < num ; i++) {
    final_angle = final_angle + step_angle;
    float x = cos(final_angle);
    float y = sin(final_angle);
    float final_x = x * distance + center_x;
    float final_y = y * distance + center_y;
    point(final_x, final_y);
  } 
}
