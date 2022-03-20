class GameModel {
  String? bgImg;
  String? icon;
  String? name;
  String? type;
  num? score;
  num? download;
  num? review;
  String? description;
  List<String>? img;

  GameModel(
    this.bgImg,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.description,
    this.img,
  );

  static List<GameModel> generateGames() {
    return [
      GameModel(
        'images/ori1.jpg',
        'images/ori_logo.png',
        'Ori and the Blind Forest',
        'Adventure',
        4.8,
        383,
        342,
        'The little spirit Ori is no stranger to peril, but when she see the monster the she will go to destroy them. see the monster the she will go to destroy them',
        [
          'images/ori2.jpg',
          'images/ori3.jpg',
          'images/ori4.jpg',
          'images/ori5.jpg',
        ],
      ),
      GameModel(
        'images/rl1.jpg',
        'images/rl_logo.png',
        'Rayman Legends',
        'Adventure',
        4.6,
        213,
        162,
        'The little spirit Ori is no stranger to peril, but when she see the monster the she will go to destroy them. see the monster the she will go to destroy them',
        [
          'images/rl2.jpg',
          'images/rl3.jpg',
          'images/rl4.jpg',
          'images/rl5.jpg',
        ],
      ),
    ];
  }
}
