void main(List<String> args) {}

//DateTime? -> nullable 형식이다.
// nullable 형식이 있는 변수는 초기화 되지 않은 변수이고, 초기값은 null 이다.
// 모든 변수에는 nullable 유형이 있다. 심지어 숫자도 nullable 이다.
// dart 에서는 변수로 지정할 수 있는 모든 것들은 객체이기 때문이다.
class Spacecraft {
  String name; // nullable 지울 수 있음. 반드시 생성할 때 name을 정해야한다는 것이 보장되기 때문에
  DateTime? launchDate;

  // get
  int? get launchYear =>
      launchDate?.year; // 오류가 난 것은 null 값이 있을 수 있기 때문임. ?사용해주면 됨.

  // 기본 생성자
  Spacecraft(this.name, this.launchDate) {}

  // 이름이 있는 생성자 (명명된 생성자)
  Spacecraft.unlaunched(String name) : this(name, null);
}
