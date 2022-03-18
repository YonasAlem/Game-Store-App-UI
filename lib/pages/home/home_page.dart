import 'package:flutter/material.dart';

import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: Stack(
        children: [
          Transform(
            transform: Matrix4.identity()..rotateZ(20),
            origin: const Offset(140, 20),
            child: Image.asset('images/bg_liquid.png', width: 160),
          ),
          Positioned(
            right: 0,
            top: 170,
            child: Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(250, 100),
              child: Image.asset('images/bg_liquid.png', width: 160),
            ),
          ),
          Column(
            children: const [
              Header(),
            ],
          )
        ],
      ),
    );
  }
}
