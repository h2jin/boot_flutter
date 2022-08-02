import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/profile_card.dart';
import 'package:flutter_kakao/models/user.dart';

class FriendScreen extends StatelessWidget {
  const FriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('친구'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ProfileCard(user: me),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text('친구'),
                const SizedBox(width: 6),
                Text('${friends.length}'),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              // 속도를 빠르게 하기 위해서 랜더링할 때 데이터를 가져온다.
              children: List.generate(
                  // 리턴값이 리스트이므로 []로 감싸면 오류가 남.
                  friends.length,
                  (index) => ProfileCard(user: friends[index])),
            ),
          ),
        ],
      ),
    );
  }
}
