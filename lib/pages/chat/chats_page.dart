import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:Medicare/pages/chat/chats_controller.dart';

class ChatPage extends GetView<ChatsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Still Under Development",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
