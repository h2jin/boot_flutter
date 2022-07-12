import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '위젯 연습',
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children : [
              AspectRatio(
                aspectRatio: 2 / 1,
                child: Image.asset("assets/images/img1.jpg", fit: BoxFit.cover)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TitleBox(),
                    IconBox(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              
            ] 
            ),
        ),
      )
    );
  }
}

class IconBox extends StatelessWidget {
  const IconBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.call, color: Colors.blue, size: 30,),
                  SizedBox(height: 10,),
                  Text('CALL', style: TextStyle(fontSize: 15, color: Colors.blue, ),)
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Icon(Icons.route , color: Colors.blue, size: 30,),
                  SizedBox(height: 10,),
                  Text('ROUTE', style: TextStyle(fontSize: 15, color: Colors.blue, ),)
                ],
              ),
            ),Expanded(
              child: Column(
                children: [
                  Icon(Icons.share, color: Colors.blue, size: 30,),
                  SizedBox(height: 10,),
                  Text('SHARE', style: TextStyle(fontSize: 15, color: Colors.blue, ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleBox extends StatelessWidget {
  const TitleBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children : [
                const Text.rich( 
                  const TextSpan(
                    text: 'Oeschinen Lake Campground',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ) 
                ),
                SizedBox(height: 10,),
                const Text.rich(
                  const TextSpan(
                    text: 'Kandersteg, Switzerland',
                    style: TextStyle(fontSize: 18, color: Colors.grey)
                  )
                )
              ] ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.red, size: 33),
                  Text("41", style: TextStyle(fontSize: 20),)
                ],
              ),
            ],
        ),
      ),
    );
  }
}
