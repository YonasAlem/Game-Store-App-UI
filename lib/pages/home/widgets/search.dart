import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      margin: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          SizedBox(
            height: 50,
            child: TextField(
              cursorColor: const Color(0xFF5F67EA),
              decoration: InputDecoration(
                fillColor: const Color(0xFFF6F8FF),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                prefixIcon: const Icon(Icons.search_outlined),
                hintText: 'search games ...',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.withOpacity(0.7),
                ),
              ),
            ),
          ),
          Positioned(
            right: 8,
            top: 7,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color(0xFF5F67EA),
                borderRadius: BorderRadius.circular(13),
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
