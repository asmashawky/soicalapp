import 'package:first/view/logic/tabs/tabTile.dart';
import 'package:flutter/cupertino.dart';

class tabDE extends StatelessWidget {
  const tabDE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return tabtile();
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: 20);
  }
}
