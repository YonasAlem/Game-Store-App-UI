import 'package:flutter/material.dart';
import 'package:game_store_ui/pages/detail/detail_page.dart';

import '../../../models/game_model.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  final List<GameModel> gameList = GameModel.generateGames();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return DetailPage(gameModel: gameList[index]);
                },
              ));
            },
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(gameList[index].bgImg as String),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => const SizedBox(width: 10),
        itemCount: gameList.length,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
