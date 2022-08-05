import 'package:carrot_market_ui_1/models/product.dart';
import 'package:carrot_market_ui_1/screens/my_carrot/components/profile_info.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class MyCarrotProfile extends StatelessWidget {
  const MyCarrotProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ProfileInfo(product: productList[0]),
        ],
      ),
    );
  }
}
