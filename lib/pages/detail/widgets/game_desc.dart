import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../models/game_model.dart';

class GameDesc extends StatelessWidget {
  const GameDesc({Key? key, required this.gameModel}) : super(key: key);
  final GameModel gameModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          width: double.maxFinite,
          child: const Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: double.maxFinite,
          child: ReadMoreText(
            gameModel.description.toString(),
            trimLines: 2,
            colorClickableText: const Color(0xFF5F67EA),
            trimMode: TrimMode.Line,
            trimCollapsedText: 'More.',
            trimExpandedText: 'less',
            style: TextStyle(
              color: Colors.grey.withOpacity(0.9),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}
