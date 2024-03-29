import 'package:flutter/material.dart';
import 'package:flutter_airbnb_ex/size.dart';
import 'package:flutter_airbnb_ex/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({Key? key, required this.id}) : super(key: key);

  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Container(
      constraints: BoxConstraints(minWidth: 420),
      child: SizedBox(
        width: popularItemWidth,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComent(),
            _buildPopularItemUserInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
          ],
        ),
        SizedBox(height: gap_s)
      ],
    );
  }

  Widget _buildPopularItemComent() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋아요. 위치도 완전 좋아용. 다들 여기 살고싶다고ㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는 것도 전혀 불편함없이 좋았어요^^ 이불도 포근하고 좋습니다 ㅎㅎㅎ fsdfs",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: gap_s)
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text(
              "데어",
              style: subtitle1(),
            ),
            Text("한국"),
          ],
        )
      ],
    );
  }
}
