import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/dummy_chats_data.dart';
import 'package:whats_app_clone/widgets/chat_card.dart';

class ChatsListView extends StatelessWidget {
  const ChatsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (context, index) {
        return ChatCard(chat: chatData[index]);
      },
    );
  }
}
