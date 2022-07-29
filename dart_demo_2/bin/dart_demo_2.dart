import 'package:dart_demo_2/dart_demo_2.dart' as dart_demo_2;

/**
 *  변수 : 타입추론, 명시적 타입
 * 
 */

void main() {
  var name = "Voyager 1";
  var year = 1977;
  var antenaDimater = 3.7;
  var flybyObject = ['Jupiter', 'Saturn', 'Uranus'];
  var image = <String, dynamic>{
    "tags": ['saturn', 'abc'],
    "url": '//[ath/to/sarun.jpg'
  };

  print(image);
  print(image['tags']);
  print(image['tags'].runtimeType);
  List<String> tagsList = image['tags'] as List<String>; // dart에서 캐스팅 방법
  print('==========');
  print(tagsList);
  print(tagsList[0]);
  print(tagsList[1]);
  print("==================");

  // 예외처리 방법
  try {
    print(tagsList[2]);
  } catch (e) {
    // print(e.toString());
    print("예외가 발생했습니다.");
  }
  // try {
  //   print(tagsList[2]);
  // } on Exception {
  //   // print(e.toString());
  //   print("예외가 발생했습니다2222222");
  // }

  // Map 타입은 {} 중괄호를 사용한다. - kwy : value, key : value
  // Map key value pair 방식이다.
  // List 타입은 [] 대괄호를 사용한다.

  // Late variables
  // Dart 2.12 이후에 추가된 키워드 이다.
  description = 'fsdfgs';
  print(description);
}

// 선언 후 초기화된 null 이 아닌 변수를 선언한다.
// 변수를 느리게 초기화한다.
late String description;
String description1 = ""; // 초기화를 해야 가능
