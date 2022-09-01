class ChatModel {
  final String name;
  final String message;
  final String time;
  String? avatar = 'images/default.jpg';
  String? sticker = "";
  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatar,
      this.sticker});
}

List<ChatModel> chatData = [
  ChatModel(
    name: "Rahul",
    message: "kal je ha j",
    time: "10:20",
    avatar: "images/pic1.jpg",
  ),
  ChatModel(
    name: "rikat",
    message: "kal je ha j",
    time: "10:20",
    avatar: "images/pic2.jpg",
  ),
  ChatModel(
    name: "sharif",
    message: "kal je ha j",
    time: "10:20",
    avatar: "images/pic3.jpg",
  ),
  ChatModel(
    name: "arif",
    message: "kal je ha j",
    time: "10:20",
    avatar: "images/pic4.jpg",
  ),
  ChatModel(
    name: "mridul",
    message: "kal je ha j",
    time: "10:20",
    avatar: "images/pic5.jpg",
  ),
  ChatModel(
    name: "arif",
    message: "kal je ha j",
    time: "10:20",
    avatar: "images/pic4.jpg",
  ),
  ChatModel(
    name: "raj",
    message: "kal je ha j",
    time: "10:20",
    avatar: "",
  ),
  ChatModel(
    name: "jj",
    message: "kal je ha j",
    time: "10:20",
    avatar: "",
  ),
  ChatModel(
    name: "norul",
    message: "kal je ha j",
    time: "10:20",
    avatar: "images/pic5.jpg",
  ),
];
