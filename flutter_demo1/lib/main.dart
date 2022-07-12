// 1. import
// 구글에서 제공하는 모든 material 프레임워크에 있는 기본 위젯과 테마들을 사용하기 위해서 가져와야 한다.
import 'package:flutter/material.dart';

// 2. 메인함수 - 컴파일러에게 앱의 시작점을 알려준다.
// void main() {
//   runApp(app);
// } --> 위와 같은 코드
// void는 메인함수 실행완료시 아무 값도 리턴하지 않는다.
// runApp은 주어진 인자값으로 들어오는 위젯을 루트 위젯으로 만들어준다.또한 위젯트리를 생성해준다.
// Flutter와 dart는 문장의 끝은 항상 세미콜론으로 마쳐야한다.

void main() => runApp(MyApp());

// build 메서드
// 플러터에서 제공하는 모든 위젯은 또 다른 위젯을 리턴하는 build 함수를 가지고 있다.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MaterialApp - flutter에서 제공하는 material 디자인과 테마를 사용하는 위젯을 상위 위젯으로 만듦
    // primarySwatch - (swatch - 견본) (우리가 만들 앱에 사용하는 기본 음영줄을 설정한다.)
    return MaterialApp(
      title: 'my flutter app',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyHomePage(), // 앱이 처음 시작되었을 때 보여지는 화면
    );
  }
}

// 항상 statelessWidget인지 statefulWidget을 사용할지 먼저 고민을 해야함
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold (발판): 발판을 만들어주다.
    // 앱을 빨리 만들 수 있도록 가장 많이 사용하는 시각적 레이아웃을 구성해주는 발판이다.
    return Scaffold(
      appBar: AppBar(title: const Text('My First App'),
      centerTitle: true,),
      body: Center(
        child: Column( // 모든 자식 위젯들을 수직으로 배치하는 녀석
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.red,
              child: const Text('Hello 1', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),)
              ),
            const Text('Hello 2', style: TextStyle(fontSize: 20)),
            const Text('Hello 3', style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
