import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/app_color.dart';
import 'package:whats_app_clone/widgets/chats_tap.dart';

AppBar customAppBar() {
  return AppBar(
    title: const Text(
      'WhatsApp',
      style: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: AppColor.primaryColor,
    actions: [
      IconButton(
        icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.search, color: Colors.white),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.more_vert, color: Colors.white),
        onPressed: () {},
      ),
    ],
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(40),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.groups, color: Colors.white, size: 26),
          ),
          Expanded(
            child: const TabBar(
              indicatorColor: Colors.white,
              dividerHeight: 0,
              labelColor: Colors.white,
              overlayColor: WidgetStatePropertyAll(Color.fromARGB(27, 65, 232, 201)),
              unselectedLabelColor: Colors.white70,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              tabs: [ChatsTap(), Tab(text: 'Updates'), Tab(text: 'Calls')],
            ),
          ),
        ],
      ),
    ),
  );
}
