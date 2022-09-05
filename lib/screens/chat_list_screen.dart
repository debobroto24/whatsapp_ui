import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
// import 'package:whatsapp/pages/conversation.dart';
import 'package:whatsapp/components/chat_contacts.dart';

import '../components/chat_contacts.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: chatData.length,
      itemBuilder: (context, index) {
        return ChatContacts(
          chatData: chatData[index],
          length: chatData.length,
          index: index,
        );
      },
    );
  }
}
