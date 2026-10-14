
class Tache {
  String description;

  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  var tache1 = Tache('Faire les exercices');
  var tache2 = Tache('Apprendre Dart');
  var tache3 = Tache('Envoyer le devoir');

  print('Nombre total de tâches : ${Tache.nombreTotal}');
}
