import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final Icon iconc;
  final double size;
  const CustomIcon({Key? key, required this.iconc, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: iconc,
      iconSize: size,
      onPressed: () {},
    );
  }
}
