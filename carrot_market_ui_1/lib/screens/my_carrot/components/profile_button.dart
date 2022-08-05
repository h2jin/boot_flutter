import 'package:carrot_market_ui_1/theme.dart';
import 'package:file/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.deepOrange[50],
                borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.orange,
                size: 20,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(text, style: textTheme().headline3),
        ],
      ),
    );
  }
}
