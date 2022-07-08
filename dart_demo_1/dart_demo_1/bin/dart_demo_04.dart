void main(List<String> args) {
  BMW b = new BMW(new Engine());
}

class Wheel {
  String wheelName = "4륜 구동 바퀴";
}

class Engine {
  int power = 5000;
}

// Mixin
// class BMW with Engine, Wheel {
//   // 컴포지션 관계
//   // Engine? engine;
//   // Wheel? wheel;
// }

class BMW {
  // 컴포지션 관계
  Engine? engine;
  Wheel? wheel;
  BMW(this.engine);
}
