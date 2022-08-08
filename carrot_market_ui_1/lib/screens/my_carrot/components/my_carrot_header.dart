import 'package:carrot_market_ui_1/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(height: 30),
            _buildProfileButton(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton("판매내역", FontAwesomeIcons.receipt),
                _buildRoundTextButton("구매내역", FontAwesomeIcons.bagShopping),
                _buildRoundTextButton("관심목록", FontAwesomeIcons.heart),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  "https://placeimg.com/200/100/people",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[100],
                ),
                child: Icon(Icons.camera_alt_outlined, size: 15),
              ),
              bottom: 0,
              right: 0,
            )
          ],
        ),
        const SizedBox(width: 16),
        Column(
          children: [
            Text("developer", style: textTheme().headline2),
            const SizedBox(height: 10),
            Text("좌동 #00912"),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black38, width: 1.0),
          borderRadius: BorderRadius.circular(6.0),
        ),
        height: 45,
        child: Center(
          //  자식위젯만큼만 크기하기 때문에 Center로 감싸면 다시 꽉 찬다.
          child: Text(
            "프로필 보기",
            style: textTheme().subtitle1,
          ),
        ),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromRGBO(255, 226, 208, 1),
            border: Border.all(color: Color(0xFFD4D5DD), width: 0.5),
          ),
          width: 60,
          height: 60,
          child: Icon(iconData, color: Colors.orange),
        ),
        SizedBox(height: 10),
        Text(title, style: textTheme().subtitle1),
      ],
    );
  }
}
