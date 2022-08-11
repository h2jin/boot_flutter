import 'package:carrot_market_ui_1/models/chat_message.dart';
import 'package:carrot_market_ui_1/screens/chatting/components/chat_container.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

import '../components/appbar_preferredSize.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appBarbottomLine(),
      ),
      body: ListView(
        children: List.generate(chatMessageList.length,
            (index) => ChatContainer(chatMessage: chatMessageList[index])),
      ),
    );
  }
}
