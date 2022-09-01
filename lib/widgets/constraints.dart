import 'package:bubble/bubble.dart';
import 'package:flutter/cupertino.dart';

const styleSender = BubbleStyle(
  margin: BubbleEdges.only(top: 10),
  alignment: Alignment.topLeft,
  nipWidth: 10,
  nipHeight: 10,
  nip: BubbleNip.leftTop,
  showNip: false,
);
const styleReceiver = BubbleStyle(
  margin: BubbleEdges.only(top: 10),
  alignment: Alignment.topRight,
  nipWidth: 10,
  nipHeight: 10,
  nip: BubbleNip.rightTop,
  color: Color.fromRGBO(225, 255, 199, 1.0),
  showNip: false,
);
