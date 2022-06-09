void setup() {
  size(400,600);
  strokeWeight(5);
  int points = 600;
  int rang = 8;
  // TAU est agale à 2 fois PI qui égale à 360°
  distribution(points, rang);
  
}

void distribution(int num, int rang) {
  float distance = height / 4;
  float step_angle = TAU / num * rang;
  float step_distance = distance / num ;
  float final_angle = 0;
  float final_distance = 0;
  
  float center_x = width / 2;
  float center_y = height / 2;
  for(int i = 0 ; i < num ; i++) {
    final_angle = final_angle + step_angle;
    float x = cos(final_angle);
    float y = sin(final_angle);
    
    final_distance += step_distance;
    float final_x = x * final_distance + center_x;
    float final_y = y * final_distance + center_y;
    point(final_x, final_y);
  } 
}
