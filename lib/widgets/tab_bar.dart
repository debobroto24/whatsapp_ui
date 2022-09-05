import 'package:flutter/material.dart';

class TabBarCustom extends StatelessWidget {
  final String txt;
  const TabBarCustom({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        // width: 70,
        // child: Tab(
        //   child: Text(
        //     txt.toUpperCase(),
        //     style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //       // color: Colors.white,
        //     ),
        //   ),
        // ),
        );
  }
}
