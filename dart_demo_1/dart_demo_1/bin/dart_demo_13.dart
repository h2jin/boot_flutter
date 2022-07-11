class Animal {
  final String name;
  const Animal(this.name);
}

void main(List<String> args) {
  Animal a1 = const Animal("사자");
  // a1.name = "호랑이"; final이라 오류 
  Animal a2 = const Animal("사자1");
  
  print(a1.hashCode);
  print(a2.hashCode);

  // const로 바꾸자 래퍼런스 값이 같아짐.
  // 이름을 바꾸면 주소값이 달라짐.
}
