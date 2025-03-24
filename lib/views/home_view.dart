import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/app_color.dart';
import 'package:whats_app_clone/widgets/chats_list_view.dart';
import 'package:whats_app_clone/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: customAppBar(),
        body: const TabBarView(
          children: [
            ChatsListView(),
            Center(child: Text('Updates view')),
            Center(child: Text('Calls view')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primaryColor,
          child: const Icon(Icons.add_comment, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}
