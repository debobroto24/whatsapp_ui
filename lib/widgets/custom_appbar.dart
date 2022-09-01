import 'package:flutter/material.dart';
import 'package:whatsapp/utils/colors.dart';

class CustomAppBar extends StatelessWidget {
  final TabController controller;
  const CustomAppBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 50,
      pinned: true,
      elevation: 1,
      forceElevated: true,
      //floating : true ,
      // snap: true,
      stretch: true,
      expandedHeight: 120,
      backgroundColor: AppColors.primarySwatch,
      title: const Text('Whatsapp',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      centerTitle: false,
      actions: const [
        IconButton(
          padding: EdgeInsets.only(top: 12, right: 15),
          icon: Icon(Icons.search, size: 28, color: Colors.white),
          onPressed: null,
        ),
        IconButton(
          padding: EdgeInsets.only(top: 12, right: 15),
          icon: Icon(Icons.more_vert, size: 28, color: Colors.white),
          onPressed: null,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: TabBar(
          controller: controller,
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
    );
  }
}
