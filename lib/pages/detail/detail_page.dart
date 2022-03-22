import 'package:flutter/material.dart';
import 'package:game_store_ui/models/game_model.dart';

import 'widgets/game_info.dart';
import 'widgets/sliver_deligate.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.gameModel}) : super(key: key);

  final GameModel gameModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverDelegate(
              gameModel: gameModel,
              expandedHeight: 320,
              roundedContainerHeight: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(gameModel: gameModel),
          ),
        ],
      ),
    );
  }
}
