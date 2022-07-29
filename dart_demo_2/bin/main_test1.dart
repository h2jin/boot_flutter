import 'main_test2.dart';

void main(List<String> args) {
  var flybyObject1 = ['Jupiter', 'Saturn', 'Uranus'];

  // 자바 컬렉션 프레임 워크 사용시
  // map, filter
  flybyObject1.where((name) => name.contains('turn')).forEach(print);
  // 익명함수를 인수로 전달할 때 유용한 방법이다.

  printWithDelay2("비동기 함수 입니다.");
}

//Enum
enum planetType { terrestial, gas, ice }

// 상속 지원
class Orbiter extends Spacecraft {
  double atitude;
  Orbiter(super.name, DateTime super.launchDate, this.atitude);
}

// dart 에서 비동기 지원함. Async
// 콜백 지옥을 피하고 async 및 await 를 사용할 수 있다.
// 훨씬 코드를 쉽게 만들 수 있다.

const oneSecond = Duration(seconds: 5);

// 비동식 방식을 사용하고자 하면 Future 클래스를 사용하면 된다. 함수로 사용하고자 하면 async 키워드를 넣어줘야 한다.
// Future 클래스 사용 시 미래타입이기 때문에 몇가지 규칙이있다. 비동기 방식을 사용해야 하기 때문에 async 키워드 사용해야 함.
// 거의 네트워크 통신할 때 사용한다.
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond); //duration 데이터 타입이 들어가야 함.
  // await 바로 실행하지 않고 기다리겠다는 것.
  print(message);
}

// 비동기 딜레이 원형
// 콜백 개념이기 때문에 코드가 어려워서 지원하는 방법이 async 키워드 이다.
Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}
