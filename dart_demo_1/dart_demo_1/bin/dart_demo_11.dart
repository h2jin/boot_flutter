void main(List<String> args) {
  var chobab = ["새우초밥", "광어초밥", "연어초밥"];
  var chobabChange =
      chobab.where((element) => element != "광어초밥"); // 광어초밥이 아니면 반환시킴
  print(chobabChange);
  print(chobabChange.runtimeType);
  print(chobabChange.toList());
}
