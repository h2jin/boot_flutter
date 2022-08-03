import 'package:flutter/material.dart';
import 'package:flutter_demo_0803/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("소수판별 프로그램"),
        ),
        body: MainPage(),
      ),
    );
  }
}
