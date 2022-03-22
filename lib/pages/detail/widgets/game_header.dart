import 'package:flutter/material.dart';

import '../../../models/game_model.dart';

class GameHeader extends StatelessWidget {
  const GameHeader(this.gameModel, {Key? key}) : super(key: key);

  final GameModel gameModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Image.asset(gameModel.icon as String, width: 60),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                gameModel.name.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                gameModel.type.toString(),
                style: TextStyle(color: Colors.grey.withOpacity(0.8)),
              ),
              const SizedBox(width: 10),
              Row(
                children: [
                  _buildIconText(
                    gameModel.score.toString(),
                    Icons.star,
                    Colors.amber,
                  ),
                  const SizedBox(width: 10),
                  _buildIconText(
                    '${gameModel.download}k',
                    Icons.file_download_outlined,
                    const Color(0xFF5F67EA),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildIconText(text, icon, color) {
    return Row(
      children: [
        Icon(icon, color: color, size: 14),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        )
      ],
    );
  }
}
