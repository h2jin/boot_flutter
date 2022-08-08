import 'package:carrot_market_ui_1/screens/chatting/components/chat_item.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: PreferredSize(
            child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
            preferredSize: Size.fromHeight(0.5)),
      ),
      body: ListView(
        children: [
          ChatItem(
            imgUrl: "https://placeimg.com/200/100/people",
            name: "당근이",
            content: "developer님, 근처에 다양한 물품들이 아주 많..",
            address: "데부동",
            date: "1일전",
          ),
          ChatItem(
            imgUrl: "https://placeimg.com/200/100/people",
            name: "Flutter",
            content: "안녕하세요 지금 다 예약 상태 인가요?",
            address: "중동",
            date: "2일전",
            imageUrl2: "https://placeimg.com/200/100/people",
          ),
        ],
      ),
    );
  }
}
