import 'package:flutter/material.dart';

class MyPosts extends StatelessWidget {
  const MyPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: GridView(
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
              children: [
                Image.asset("assets/images/user3.jpg"),
                Image.asset("assets/images/user3.jpg"),
                Image.asset("assets/images/user3.jpg"),
                Image.asset("assets/images/user3.jpg"),
                Image.asset("assets/images/user3.jpg"),
                Image.asset("assets/images/user3.jpg"),
                Image.asset("assets/images/user3.jpg"),
                Image.asset("assets/images/user3.jpg"),
                Image.asset("assets/images/user3.jpg"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
