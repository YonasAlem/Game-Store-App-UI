import 'package:flutter/material.dart';

import '../../../models/game_model.dart';

class GameGallery extends StatelessWidget {
  const GameGallery({required this.gameModel, Key? key}) : super(key: key);
  final GameModel gameModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_, index) {
            if (index == 0) {
              return const SizedBox(width: 10);
            } else {
              return SizedBox(
                width: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    gameModel.img![index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }
          },
          separatorBuilder: (_, index) => const SizedBox(width: 10),
          itemCount: gameModel.img!.length),
    );
  }
}
