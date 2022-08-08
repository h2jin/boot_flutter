import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Text("우리동네 질문"),
            ),
            Container(
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Text("3시간전"),
            )
          ],
        ),
      ],
    );
  }
}
