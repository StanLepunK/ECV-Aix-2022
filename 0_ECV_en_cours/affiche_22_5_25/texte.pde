void affichage_text() {
  ma_typo = createFont("UniversLTStd-XBlack.otf", 48);
  textFont(ma_typo);
  int taille_typo = 24;
  textSize(taille_typo);
  textAlign(CENTER);
  text(title, 0,0);
  textSize(taille_typo /2);
  text(sous_titre, 0, 100);
}
