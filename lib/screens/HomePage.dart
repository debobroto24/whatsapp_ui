import 'package:flutter/material.dart';
import 'package:whatsapp/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    // length: 4,
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              "Whatsapp",
              style: TextStyle(fontSize: 21),
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const IconButton(
              padding: EdgeInsets.only(top: 12, right: 15),
              icon: Icon(Icons.search, size: 28, color: Colors.white),
              onPressed: null,
            ),
            const IconButton(
              padding: EdgeInsets.only(top: 12, right: 15),
              icon: Icon(Icons.more_vert, size: 28, color: Colors.white),
              onPressed: null,
            ),
          ],

          bottom: TabBar(
            controller: _controller,
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            tabs: [
              const SizedBox(
                width: 25,
                child: Tab(
                  icon: Icon(Icons.camera_alt),
                ),
              ),
              SizedBox(
                width: 90,
                child: Tab(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "CHATS",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "10",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 70,
                child: Tab(
                  child: Text(
                    "STATUS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 70,
                child: Tab(
                  child: Text(
                    "CALLS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("camera"),
          ChatPage(),
          Text("status"),
          Text("calls"),
        ],
      ),
    );
  }
}
