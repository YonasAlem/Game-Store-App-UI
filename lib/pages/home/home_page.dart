import 'package:flutter/material.dart';
import 'package:game_store_ui/pages/home/widgets/genre.dart';

import 'widgets/header.dart';
import 'widgets/search.dart';

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
          SingleChildScrollView(
            child: Column(
              children: const [
                Header(),
                Search(),
                Genre(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildBottomNavigationBar() {
    return Container(
      color: const Color(0xFFF6F8FF),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: const Color(0xFF5F67EA),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.9),
            type: BottomNavigationBarType.fixed,
            items: [
              _buildNavigationItem('Home', Icons.home),
              _buildNavigationItem('Application', Icons.more_horiz_outlined),
              _buildNavigationItem('Videos', Icons.play_arrow_rounded),
              _buildNavigationItem('Books', Icons.auto_stories_outlined),
            ],
          ),
        ),
      ),
    );
  }

  _buildNavigationItem(String title, IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: title,
    );
  }
}
