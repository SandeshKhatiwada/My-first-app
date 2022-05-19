import 'package:flutter/material.dart';

import 'my_post.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        title: Text(
          "username",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.brightness_5_outlined,
                color: Colors.black,
                size: 25,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/user.jpg"),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "3431",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "posts",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black38),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 25),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "6530",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "followers",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black38),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 25),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "2171",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "following",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black38),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: 35,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[200],
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text("Edit Profile"),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Your Name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Your bio goes here.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "here also.....",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "info@gmail.com",
                style: TextStyle(fontSize: 13, color: Colors.blue),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: 25),
            DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  TabBar(
                      indicatorColor: Colors.red,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.red,
                      tabs: [
                        Icon(
                          Icons.apps,
                          // color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          Icons.format_list_bulleted,
                          // color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          Icons.location_on,
                          // color: Colors.black,
                          size: 30,
                        ),
                        Icon(
                          Icons.assignment_ind,
                          // color: Colors.black,
                          size: 30,
                        )
                      ]),
                  Container(
                    height: 500,
                    child: Expanded(
                      child: TabBarView(children: [
                        MyPosts(),
                        Center(child: Text("My City")),
                        Center(child: Text("My Location")),
                        Center(child: Text("My Games"))
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
