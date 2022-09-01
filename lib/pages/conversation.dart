import 'package:flutter/material.dart';
import 'package:whatsapp/pages/message_page.dart';

class Conversation extends StatelessWidget {
  const Conversation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset('images/default.jpg',
                  height: 40, width: 40, fit: BoxFit.cover),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 8.0), child: Text("rahul")),
          ],
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.video_call,
              size: 32,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.call,
              size: 32,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert,
              size: 32,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: const MessagePage(),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(50),
                      //   borderSide:
                      //       const BorderSide(color: Colors.white, width: 0.0),
                      // ),
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
