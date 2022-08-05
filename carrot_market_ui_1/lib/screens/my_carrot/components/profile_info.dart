import 'package:carrot_market_ui_1/models/product.dart';
import 'package:carrot_market_ui_1/screens/my_carrot/components/profile_button.dart';
import 'package:carrot_market_ui_1/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key, required this.product}) : super(key: key);

  final Product product; // 사용자로

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(product.urlImage),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        CupertinoIcons.camera,
                        size: 15,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: textTheme().headline2,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.author,
                    style: textTheme().bodyText2,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              width: double.infinity,
              height: 40,
              child: Center(
                child: Text(
                  "프로필 보기",
                  style: textTheme().bodyText1,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Row(
              children: [
                ProfileButton(icon: FontAwesomeIcons.receipt, text: "판매내역"),
                ProfileButton(icon: FontAwesomeIcons.bagShopping, text: "구매내역"),
                ProfileButton(icon: FontAwesomeIcons.heart, text: "관심목록"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
