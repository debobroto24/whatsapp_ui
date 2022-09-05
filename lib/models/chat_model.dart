class ChatModel {
  final String name;
  final String message;
  final String time;
  final bool sender;
  final bool typing;
  String? avatar = 'images/default.jpg';
  final String? sticker;
  final bool gif;
  final bool msgSent;
  final String newMsgNm;
  final String senderName;
  final String msgSticker;
  final bool isGroup;
  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatar,
    required this.sender,
    required this.typing,
    required this.sticker,
    required this.gif,
    required this.msgSent,
    required this.newMsgNm,
    required this.senderName,
    required this.msgSticker,
    required this.isGroup,
  });
}

List<ChatModel> chatData = [
  ChatModel(
    name: "Weekend",
    message: "Sticker",
    time: "9:49",
    avatar: "images/tpic1.jpg",
    sender: true,
    typing: false,
    sticker: "audio",
    msgSent: false,
    gif: false,
    newMsgNm: "2",
    senderName: "Sofia",
    msgSticker: "",
    isGroup: true,
  ),
  ChatModel(
    name: "joao Pereira",
    message: "",
    time: "9:45",
    avatar: "images/tpic2.jpg",
    sender: true,
    typing: true,
    sticker: "audio",
    msgSent: false,
    gif: false,
    newMsgNm: "0",
    senderName: "",
    msgSticker: "",
    isGroup: false,
  ),
  ChatModel(
    name: "Isabele van Rijn",
    message: "Best breakfast ever",
    time: "9:27",
    avatar: "images/tpic3.jpg",
    sender: false,
    typing: false,
    sticker: "video",
    msgSent: false,
    gif: false,
    newMsgNm: "0",
    senderName: "",
    msgSticker: "",
    isGroup: false,
  ),
  ChatModel(
    name: "Family",
    message: "She is so cute",
    time: "9:09",
    avatar: "images/tpic4.jpg",
    sender: true,
    typing: false,
    sticker: "",
    msgSent: false,
    gif: false,
    newMsgNm: "0",
    senderName: "Mom",
    msgSticker: "msgSticker",
    isGroup: true,
  ),
  ChatModel(
    name: "Alicia Garcia",
    message: "It Was so great to see.",
    time: "8:54",
    avatar: "images/tpic5.jpg",
    sender: true,
    typing: false,
    sticker: "",
    msgSent: true,
    gif: false,
    newMsgNm: "0",
    senderName: "Mom",
    msgSticker: "",
    isGroup: false,
  ),
  ChatModel(
    name: "Lunch Club!",
    message: "",
    time: "8:33",
    avatar: "images/tpic6.png",
    sender: true,
    typing: false,
    sticker: "",
    msgSent: false,
    gif: true,
    newMsgNm: "0",
    senderName: "Dominic Schwarz",
    msgSticker: "",
    isGroup: true,
  ),
  ChatModel(
    name: "Sandras's Cakes",
    message: "It will be ready on Thursday!",
    time: "8:33",
    avatar: "images/tpic7.jpg",
    sender: false,
    typing: false,
    sticker: "",
    msgSent: false,
    gif: false,
    newMsgNm: "0",
    senderName: "Dominic Schwarz",
    msgSticker: "",
    isGroup: false,
  ),
];
