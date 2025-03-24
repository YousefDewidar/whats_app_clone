class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatar;
  final int unread;
  final bool hasStory;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatar,
    required this.unread,
    this.hasStory = false,
  });
}
