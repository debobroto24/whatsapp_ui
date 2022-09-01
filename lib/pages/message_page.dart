import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/constraints.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1.0),
          child: const Text('TODAY',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
        Bubble(
          style: styleReceiver,
          showNip: true,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          style: styleReceiver,
          showNip: true,
          child: Text('Hello, World!', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleReceiver,
          child: Text('ki obosta', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          showNip: true,
          child: Text('Hi, developer!'),
        ),
        Bubble(
          margin: BubbleEdges.only(top: 10),
          alignment: Alignment.center,
          nip: BubbleNip.no,
          color: Color.fromRGBO(212, 234, 244, 1.0),
          child: Text('TOMORROW',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
        ),
      ],
    );
  }
}
