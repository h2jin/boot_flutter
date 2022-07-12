import 'package:flutter/material.dart';

// 지금까지는 상태가 없는 statelessWidget을 사용했다.
// 이제 statefulWidget 사용해 보자

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// 클래스 private임 state를 상속받은 녀석. build라는 메서드가 있어서 여기에 하위 위젯들을 작성해야함.
class _HomePageState extends State<HomePage> {
  // 변수 선언 - 상태를 저장할 수 있는 변수를 선언
  int _counter = 0;

  // 메서드 선언 (동작)
  // 상태를 변경하는 메서드를 만들때는 반드시 setState()메서드를 사용해야하고 그 안에 동작을 정의해야한다.
  void _increment() {
    setState(() {
      _counter++;  
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(onPressed: _increment, child: Text('increment')),
          SizedBox(width: 16),
          Text('Count : ${_counter}')
        ],
      ),
    );
  }
}
