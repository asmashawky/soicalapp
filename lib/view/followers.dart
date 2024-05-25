import 'package:first/view/logic/tabs/tab2.dart';
import 'package:first/view/logic/tabs/tab3.dart';
import 'package:first/view/logic/tabs/tabDE.dart';
import 'package:flutter/material.dart';

class followers extends StatelessWidget {
  const followers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Flip",
            style: TextStyle(color: Colors.purple, fontSize: 30),
          ),
          titleSpacing: 00.0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.purple,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.mark_chat_unread_outlined,
                    color: Colors.purple)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.purple))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "asstes/Anime.jpg",
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 25,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.purple, shape: BoxShape.circle),
                      child: Text(
                        "+",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              " Asmaa Hegazy",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            Text(
              "Life Style | UiUx Disignr | Model",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "asmaashawky@gmail.com",
              style: TextStyle(color: Colors.grey),
            ),
            TabBar(tabs: [
              Tab(
                child: Column(
                  children: [
                    Text(
                      "33",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    Text(
                      "Posts",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Text(
                      "743",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Text(
                      "1,043",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ]),
            Expanded(
                child: TabBarView(
              children: [
                tab2(),
                tabDE(),
                tab3(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
