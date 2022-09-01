import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

import '../pages/conversation.dart';

class Contact extends StatefulWidget {
  final ChatModel chatData;
  const Contact({Key? key, required this.chatData}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const Divider(height: 10),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage:
                  AssetImage(widget.chatData.avatar ?? 'images/default.jpg'),
            ),
            title: Text(
              widget.chatData.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              widget.chatData.message,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            trailing: Text(
              widget.chatData.time,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Conversation()));
            },
          ),
        ],
      ),
    );
  }
}
