import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_list_screen.dart';
import 'package:whatsapp/widgets/custom_appbar.dart';

import 'chat_list_screen.dart';

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
      body: NestedScrollView(
        headerSliverBuilder: (constext, _) {
          return [
            CustomAppBar(controller: _controller),
          ];
        },
        body: TabBarView(
          controller: _controller,
          children: [
            Text("camera"),
            ChatListScreen(),
            Text("status"),
            Text("calls"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.message),
        backgroundColor: Color.fromARGB(255, 10, 219, 118),
      ),
      //
    );
  }
}
