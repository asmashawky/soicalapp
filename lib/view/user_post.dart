import 'package:flutter/material.dart';

import 'logic/buildStory.dart';

class userPost extends StatelessWidget {
  const userPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  buildStory(),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Asmaa Hegazy",
                  )
                ],
              ),
              Icon(Icons.menu)
            ],
          ),
        ),
        Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: const DecorationImage(
                  image: AssetImage(
                    "asstes/j.webp",
                  ),
                  fit: BoxFit.fill)),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Icon(Icons.chat_bubble_outline_outlined),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark_add_outlined)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: const [
              Text(
                "Liked by",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                " Aya Shadad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" and ", style: TextStyle(color: Colors.grey)),
              Text(
                "Others",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
