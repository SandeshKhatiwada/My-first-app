import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  final PageController ourController = PageController(initialPage: 0);

  List colorList = [
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.black,
    Colors.amber,
    Colors.pink,
    Colors.purple,
    Colors.blue,
  ];
  Widget buildPageViewWithBuilder() {
    return PageView.builder(
      itemCount: colorList.length,
      itemBuilder: (context, index) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          color: colorList[index],
          child: Center(
            child: Text("Page number ${index + 1}"),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: ourController,
        scrollDirection: Axis.vertical,
        onPageChanged: (index) {
          print("page changed: $index");
        },
        children: [
          Container(
            color: Colors.green,
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  ourController.animateToPage(2,
                      duration: Duration(seconds: 2), curve: Curves.ease);
                },
                height: 50,
                color: Colors.white,
                child: Text("Click Me"),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
