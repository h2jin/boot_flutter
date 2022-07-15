import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DayAndNight(),
      title: 'stateful sample',
    );
  }
}

class DayAndNight extends StatelessWidget {
  const DayAndNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Today()),
            Expanded(
              child: Container(
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Today extends StatefulWidget {
  const Today({Key? key}) : super(key: key);

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  String changeValue = "";
  @override
  void initState() {
    changeValue = "낮";
  }

  void changeText() {
    setState(() {
      // 상항 연산자 이용하여 토글기능 완성하기
      changeValue = (changeValue == "낮") ? "밤" : "낮";
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("눌러짐");
        changeText();
      },
      child: Container(
        height: 400,
        width: double.infinity,
        child: Text(changeValue),
      ),
    );
  }
}
