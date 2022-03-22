import 'package:flutter/material.dart';

import '../../../models/game_model.dart';

class GameInfo extends StatelessWidget {
  const GameInfo({Key? key, required this.gameModel}) : super(key: key);

  final GameModel gameModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          GameInfo(gameModel: gameModel),
        ],
      ),
    );
  }
}
