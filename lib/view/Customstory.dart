import 'package:flutter/material.dart';

import 'logic/buildStory.dart';

class Customstory extends StatelessWidget {
  const Customstory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildStory(
          height: 60,
          width: 60,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration:
                BoxDecoration(color: Colors.purple, shape: BoxShape.circle),
            child: Text(
              "+",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
