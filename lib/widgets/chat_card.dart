import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/app_color.dart';
import 'package:whats_app_clone/models/chat_model.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key, required this.chat});

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(1.3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2.2,
            color: chat.hasStory ? AppColor.lightprimaryColor : Colors.white,
          ),
        ),
        child: CircleAvatar(
          radius: 23,
          backgroundImage: NetworkImage(chat.avatar),
        ),
      ),
      title: Text(
        chat.name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
      subtitle: Text(
        chat.message,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            chat.time,
            style: TextStyle(
              fontSize: 12,
              letterSpacing: .5,
              color: chat.unread > 0 ? AppColor.lightprimaryColor : Colors.grey,
            ),
          ),
          if (chat.unread > 0)
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColor.lightprimaryColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                '${chat.unread}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}
