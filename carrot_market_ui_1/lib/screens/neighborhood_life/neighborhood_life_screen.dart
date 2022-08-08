import 'package:carrot_market_ui_1/screens/neighborhood_life/components/card_item.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("동네생활"),
        actions: [
          Icon(FontAwesomeIcons.search, size: 20),
          SizedBox(width: 20),
          Icon(FontAwesomeIcons.folderPlus, size: 20),
          SizedBox(width: 20),
          Icon(FontAwesomeIcons.bell, size: 20),
          SizedBox(width: 10),
        ],
        bottom: PreferredSize(
          child: Divider(thickness: 0.5, height: 0.5, color: Colors.grey),
          preferredSize: Size.fromHeight(0.5),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://placeimg.com/200/100/people",
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      child: Text(
                        "이웃과 함께 만드는 봄 간식 지도 마음까지 따뜻해지는 봄 간식을 만나보세요.",
                        maxLines: 2,
                        style: textTheme().bodyText2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              children: [
                CardItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
