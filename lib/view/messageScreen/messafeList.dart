import 'package:flutter/material.dart';

class messageList extends StatelessWidget {
  const messageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color.fromARGB(255, 232, 232, 233)),
      child: ListTile(
        leading: Container(
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
        title: Text(
          "Asma Magdy",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "hi how are u?",
          style: TextStyle(fontWeight: FontWeight.w300, fontFamily: 'Raleway'),
        ),
        trailing: Icon(
          Icons.circle,
          color: Colors.purple,
        ),
      ),
    );
  }
}
