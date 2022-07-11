// class Person {
//   String name;
//   int age;

//   Person({required this.name, required this.age});

//   // null saftey를 해주거나 required 사용하기
// }

class Person {
  String? name;
  int? age;

  // Person({this.name, this.age = 1});
  Person({this.name, this.age});

  // null saftey를 해주거나 required 사용하기

}

void main(List<String> args) {
  //Person p1 = Person(name: "홍길동", age: 100); // 실제 key값이기 때문에 없으면 안됨. 힌트가 아님.
  Person p1 = Person(name: "홍길동");
  print(p1.age);
  // null 대체 연산자 활용
  p1.age = 10;
  int mAge = p1.age ?? 1;
  print(mAge);
}
