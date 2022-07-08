void main(List<String> args) {
  start(Dog());
  start(Cat());
  start(Fish());
}

abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print("멍멍");
  }
}

class Cat implements Animal {
  @override
  void sound() {
    print("야옹");
  }
}

class Fish implements Animal {
  @override
  void sound() {
    print("뻐끔뻐끔");
  }
}

// 클래스 밖에서도 함수 만들 수 있음.
void start(Animal x) {
  x.sound();
}
