import 'package:flutter/material.dart';

import '../../../models/game_model.dart';

class Newest extends StatefulWidget {
  const Newest({Key? key}) : super(key: key);

  @override
  State<Newest> createState() => _NewestState();
}

class _NewestState extends State<Newest> {
  final List<GameModel> gameList = GameModel.generateGames();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: gameList
            .map(
              (e) => Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(e.icon as String, width: 50, fit: BoxFit.cover),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name as String,
                            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    e.type as String,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(height: 2),
                                  _buildRatingStar(),
                                ],
                              ),
                              _buildInstallButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Row _buildRatingStar() {
    final colors = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.4),
    ];
    return Row(
      children: colors
          .map(
            (e) => Icon(
              Icons.star,
              size: 14,
              color: e,
            ),
          )
          .toList(),
    );
  }

  Container _buildInstallButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF5F67EA),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Text(
        'Install',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
