import 'package:flutter/material.dart';

class tabtile extends StatelessWidget {
  const tabtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.white),
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
        title: Text("Samaa Ragab"),
        subtitle: Text("Following since 5 months"),
        trailing: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Following ",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}
