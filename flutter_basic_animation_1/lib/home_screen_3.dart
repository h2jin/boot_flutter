import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({Key? key}) : super(key: key);

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  double _opacity = 1;
  double _width = 60;
  bool _check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("도전과제")),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _check == true
                              ? _change(0.7, 150, false)
                              : _change(1, 60, true);
                        });
                      },
                      child: AnimatedContainer(
                        width: _width,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(96, 125, 136, _opacity),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        duration: const Duration(milliseconds: 400),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      width: 35,
                      height: 35,
                      child: Icon(
                        Icons.turn_right_rounded,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _change(double opacity, double width, bool check) {
    this._opacity = opacity;
    this._width = width;
    this._check = check;
  }
}
