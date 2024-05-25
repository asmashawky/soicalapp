import 'package:flutter/material.dart';

class ListTaps extends StatelessWidget {
  const ListTaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(
                  "asstes/Anime.jpg",
                ),
                fit: BoxFit.fill)),
      ),
      title: Text(
        "Asmaa Hegazy",
        style: TextStyle(color: Colors.black),
      ),
      subtitle: Text(" followed since 22feb 2022",
          style: TextStyle(color: Colors.black)),
      trailing: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(16),
        ),
        onPressed: () {},
        child: Text(
          "Following",
          style: TextStyle(backgroundColor: Colors.purple, color: Colors.white),
        ),
      ),
    );
  }
}
