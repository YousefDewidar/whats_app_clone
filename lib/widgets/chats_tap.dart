import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/app_color.dart';

class ChatsTap extends StatelessWidget {
  const ChatsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Chats'),
          SizedBox(width: 8),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
            child: Text(
              '8',
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
