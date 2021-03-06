import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          elevation: 8.0,
          title: const Text('Welcome to flutter'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }

  // 매개변수 값을 넣기 위해서 클래스 안의 메서드로 만들어줌

}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(children: [
    Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: const Text(
            'Oeschinen Lake Campground',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          'Kabdersteg, Switzerland',
          style: TextStyle(color: Colors.grey[500]),
        )
      ],
    )),
    StarScore(),
    const Text('41')
  ]),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color)),
      ),
    ],
  );
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
    _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(Colors.blue, Icons.share, 'SHARE')
  ],
);

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

class StarScore extends StatefulWidget {
  const StarScore({Key? key}) : super(key: key);
  @override
  State<StarScore> createState() => _StarScoreState();
}

class _StarScoreState extends State<StarScore> {
  bool state = true;
  @override
  void initState() {
    bool state = true;
  }

  Icon setIcon() {
    if (state) {
      print("setIcon 들어옴");
      return Icon(
        Icons.star_border_outlined,
        color: Colors.red,
      );
    }
    return Icon(Icons.star, color: Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            state = (state) ? false : true;
          });
          print(state);
        },
        child: setIcon());
  }
}
