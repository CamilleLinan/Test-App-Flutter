class Game {
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String description;
  List<String> images;

  Game(
    this.bgImage,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.description,
    this.images,
  );

  static List<Game> games() {
    return [
      Game(
        'assets/images/ori1.jpg',
        'assets/images/ori_logo.png',
        'Ori and The Forest',
        'Adventure',
        4.8,
        382,
        324,
        "C'est pendant une violente tempête qu'Ori chuta de l'Arbre des Esprits pour atterrir dans la forêt de Nibel. Naru, qui fut témoin de la scène, se précipita sur les lieux et, découvrant l'adorable créature parée de lumière endormie au cœur du bosquet, décida de la recueillir afin d'en faire son enfant.",
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
          'assets/images/ori5.jpg',
        ],
      ),
      Game(
        'assets/images/rl1.jpg',
        'assets/images/rl_logo.png',
        'Rayman Legends',
        'Adventure',
        4.7,
        226,
        148,
        "Jeu de plates-formes de la célèbre série française, Rayman Legends permet au joueur de partir à la recherche des Ptizêtres dans divers environnements. On retrouve le fameux Rayman, mais aussi d'autres personnages jouables à débloquer ainsi qu'un mode trois joueurs.",
        [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      ),
      Game(
        'assets/images/legend1.jpg',
        'assets/images/legend_logo.jpg',
        'League of Legends',
        'Action',
        3.6,
        314,
        282,
        "League of Legends est un jeu de stratégie en équipe dans lequel deux équipes de cinq champions s'affrontent pour détruire la base adverse. Faites votre choix parmi plus de 140 champions disponibles, partez au combat, éliminez vos adversaires avec adresse et abattez les tourelles ennemies pour décrocher la victoire.",
        [
          'assets/images/legend2.jpg',
          'assets/images/legend3.jpg',
          'assets/images/legend4.jpg',
        ],
      ),
    ];
  }
}
