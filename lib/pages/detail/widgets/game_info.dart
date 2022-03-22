import 'package:flutter/material.dart';
import 'package:game_store_ui/pages/detail/widgets/game_desc.dart';
import 'package:game_store_ui/pages/detail/widgets/game_gallery.dart';

import '../../../models/game_model.dart';
import 'game_header.dart';

class GameInfo extends StatelessWidget {
  const GameInfo({Key? key, required this.gameModel}) : super(key: key);

  final GameModel gameModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          GameHeader(gameModel),
          GameGallery(gameModel: gameModel),
          GameDesc(gameModel: gameModel),
        ],
      ),
    );
  }
}
