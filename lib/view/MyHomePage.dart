import 'package:first/view/followers.dart';
import 'package:first/view/messageScreen/theScreen.dart';
import 'package:first/view/user_post.dart';
import 'package:flutter/material.dart';

import 'Customstory.dart';
import 'logic/buildStory.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Flip",
          style: TextStyle(color: Colors.purple, fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.purple,
              )),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TheScreen()),
                );
              },
              icon:
                  Icon(Icons.mark_chat_unread_outlined, color: Colors.purple)),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const followers()),
                );
              },
              icon: Icon(Icons.notifications, color: Colors.purple))
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: Row(
              children: [
                Customstory(),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return buildStory();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return userPost();
              },
            ),
          ),
        ],
      ),
    );
  }
}
