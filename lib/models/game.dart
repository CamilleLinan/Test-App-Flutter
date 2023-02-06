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
        'Ori is stranger to peril, but when a fateful flight puts the owlet...',
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
        'Rayman is stranger to peril, but when a fateful flight puts the owlet...',
        [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      ),
      Game(
        'assets/images/legend1.jpg',
        'assets/images/legend_logo.png',
        'League of Legends',
        'Action',
        3.6,
        314,
        282,
        'League of Legends is stranger to peril, but when a fateful flight puts the owlet...',
        [
          'assets/images/legend2.jpg',
          'assets/images/legend3.jpg',
          'assets/images/legend4.jpg',
        ],
      ),
    ];
  }
}
