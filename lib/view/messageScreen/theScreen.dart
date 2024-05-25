import 'package:flutter/material.dart';

import 'messafeList.dart';

class TheScreen extends StatelessWidget {
  const TheScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Image.asset("asstes/icons8-go-back-50.png"),
        backgroundColor: Colors.white,
        title: Text(
          " Messages ",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(168, 255, 255, 255)),
            child: const TextField(
              autofocus: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Search',
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return messageList();
              },
              itemCount: 20,
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
