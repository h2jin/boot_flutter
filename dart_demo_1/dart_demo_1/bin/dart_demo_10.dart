void main(List<String> args) {
  var chobab = ["새우초밥", "광어초밥", "연어초밥"];
  // map 함수는 무언가 변형(변경, 가공)을 해야할 때 사용하면 굉장히 편리하다.

  // var chobabChange = chobab;
  // print(chobabChange);
  // chobabChange.add("간장새우초밥");
  // print(chobab); // 주소값이 같음. -> 얕은 복사 (주소값을 넣어주는 것을 얕은 복사라고 한다.)

  var chobabChange = chobab.map((e) => "간장_$e").toList();
  print(chobabChange.runtimeType); //map 함수를 사용하면, list 계열에 변경을 주려할 때 편리하게 할 수 있는 것이다.
  print(chobab.runtimeType); // 깊은 복사 : 주소값이 다름.
}
