import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:game_store_ui/models/game_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.gameModel}) : super(key: key);

  final GameModel gameModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail page'),
      ),
    );
  }
}
