
class Couleur {
  final int r;
  final int g;
  final int b;

  // Constructeur normal
  Couleur(this.r, this.g, this.b);

  // Constructeurs nommés
  Couleur.rouge()
      : r = 255,
        g = 0,
        b = 0;

  Couleur.vert()
      : r = 0,
        g = 255,
        b = 0;

  Couleur.bleu()
      : r = 0,
        g = 0,
        b = 255;

  // Afficher les informations de la couleur
  void afficherCouleur() {
    print('(R :$r, V :$g, B :$b)');
  }
}

void main() {
  Couleur rouge = Couleur.rouge();
  Couleur vert = Couleur.vert();
  Couleur bleu = Couleur.bleu();

  rouge.afficherCouleur();
  vert.afficherCouleur();
  bleu.afficherCouleur();
}
