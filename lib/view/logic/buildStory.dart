import 'package:flutter/material.dart';

class buildStory extends StatelessWidget {
  const buildStory({Key? key, this.height, this.width}) : super(key: key);
  final height;
  final width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(
                  "asstes/Anime.jpg",
                ),
                fit: BoxFit.fill)),
      ),
    );
  }
}
