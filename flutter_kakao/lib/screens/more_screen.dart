import 'package:flutter/material.dart';

import '../models/tap.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "더보기",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: List.generate(
                taps.length,
                (index) => Column(
                  children: [
                    Icon(taps[index].icon),
                    const SizedBox(height: 5),
                    Text(taps[index].text),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
