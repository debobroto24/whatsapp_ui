import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/conversation.dart';
import 'package:whatsapp/widgets/contact.dart';

class ChatListScreen extends StatelessWidget {
  ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: chatData.length,
      itemBuilder: (context, index) {
        return Contact(chatData: chatData[index]);
      },
    );
  }
}
