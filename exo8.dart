
class Livre {
  String titre;
  String auteur;

  int _pages = 200;

  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
    print('Nombre de pages : $pages');
  }

  static void afficherTotalLivres() {
    print('Total des livres créés : $totalLivres');
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre)
      : super(titre, auteur);

  @override
  void afficherInfos() {
    super.afficherInfos();
    print('Genre : $genre');
  }
}

void main() {
  var livre1 = Livre('Le Petit Prince', 'Saint-Exupéry');
  var livre2 = Livre('L Étranger', 'Albert Camus');

  var roman1 = Roman(
    'Sherlock Holmes',
    'Arthur Conan Doyle',
    'Policier',
  );

  var roman2 = Roman(
    'Les Misérables',
    'Victor Hugo',
    'Historique',
  );

  print('--- Livre 1 ---');
  livre1.afficherInfos();

  print('\n--- Livre 2 ---');
  livre2.afficherInfos();

  print('\n--- Roman 1 ---');
  roman1.afficherInfos();

  print('\n--- Roman 2 ---');
  roman2.afficherInfos();

  print('');
  Livre.afficherTotalLivres();
}
