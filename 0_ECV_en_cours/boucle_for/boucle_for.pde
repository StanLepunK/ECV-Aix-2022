void setup() {
  size(400,600);
  int num = 10 ;
  int pos_y = height / 2;
  
  // cette valeur permet de répartir les points dans toute la largeur
  int espace = width / num;
  strokeWeight(5);
  
  push();
  // pour bouger les points dans leurs globalités
  translate(espace/2,pos_y);
  // repartition absolue des points
  for(int i = 0 ; i < num ; i = i + 1) {
    int pos_x = i * espace ;
    point(pos_x, 0); 
  }
  pop();

}
