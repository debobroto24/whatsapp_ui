import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/utils/styles.dart';

// import '../pages/conversation.dart';

class ChatContacts extends StatefulWidget {
  final ChatModel chatData;
  final int length;
  final int index;
  const ChatContacts(
      {Key? key,
      required this.chatData,
      required this.length,
      required this.index})
      : super(key: key);

  @override
  State<ChatContacts> createState() => _ChatContactsState();
}

class _ChatContactsState extends State<ChatContacts> {
  @override
  Widget build(BuildContext context) {
    final int messageNumber = int.parse(widget.chatData.newMsgNm);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage:
                AssetImage(widget.chatData.avatar ?? 'images/default.jpg'),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Text(
              widget.chatData.name,
              style: TTextStyle.headline,
            ),
          ),
          subtitle: widget.chatData.isGroup
              ?
              // group
              Row(
                  children: [
                    Text(widget.chatData.senderName + ": ",
                        style: TTextStyle.messageTextStyle),
                    if (widget.chatData.sticker == "audio")
                      const Icon(Icons.audio_file),
                    if (widget.chatData.sticker == "audio")
                      Text(" Sticker", style: TTextStyle.messageTextStyle),
                    if (widget.chatData.gif == true)
                      const Icon(Icons.gif_box_rounded),
                    if (widget.chatData.gif == true)
                      Text("Gif", style: TTextStyle.messageTextStyle),
                    if (widget.chatData.message != "" &&
                        widget.chatData.message != "Sticker")
                      Text(widget.chatData.message,
                          style: TTextStyle.messageTextStyle),
                    if (widget.chatData.msgSticker == "msgSticker")
                      const Text("😍")
                  ],
                )
              :
              // single
              Row(
                  children: [
                    if (widget.chatData.typing == true)
                      Text("Typing...", style: TTextStyle.MessageTypig),
                    if (widget.chatData.sticker == "video")
                      const Icon(Icons.video_call),
                    if (widget.chatData.msgSent == true)
                      const Icon(Icons.fork_right),
                    Text(widget.chatData.message,
                        style: TTextStyle.messageTextStyle),
                  ],
                ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // int.parse(widget.chatData.newMsgNm) > 0

              messageNumber > 0
                  ? Column(
                      children: [
                        Text(widget.chatData.time,
                            style: TTextStyle.newMessageCount),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                            alignment: Alignment.center,
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.greenAccent,
                            ),
                            child: Text(widget.chatData.newMsgNm,
                                style: const TextStyle(color: Colors.white)))
                      ],
                    )
                  : Text(
                      widget.chatData.time,
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
                    ),
            ],
          ),
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => Conversation()));
          // },
        ),
        if (widget.length - 1 != widget.index)
          const Divider(
            endIndent: 46,
            indent: 70,
            height: 10,
            thickness: 2,
          ),
      ],
    );
  }
}
