import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool? result;
  String input = "";

  final TextEditingController _textEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "숫자 입력",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          TextField(
            controller: _textEditingController,
            onSubmitted: _handleController,
            cursorColor: Colors.blueGrey,
            decoration: InputDecoration(
              focusColor: Colors.blueGrey,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                if (result == true)
                  Text(
                    "${input} 은/는 소수입니다.",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 25),
                  )
                else
                  Text(
                    "${input} 은/는 소수가 아닙니다.",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 25),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _handleController(String value) {
    _textEditingController.clear();
    int number = int.parse(value);

    setState(() {
      input = value;
      if (number == 2) {
        result = true;
      } else {
        for (int i = 2; i < number; i++) {
          int a = number ~/ i;
          double b = number / i;
          double c = b - a; // 0이 되는 순간 소수가 아님.
          if (c == 0) {
            result = false;
            break;
          } else {
            result = true;
          }
        }
      }
    });
  }
}
