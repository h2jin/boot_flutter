void main(List<String> args) {
  CheeseBurger ch = CheeseBurger("치즈버거");
  print(ch.name);
} // end of main

class Burger {
  final String? name;
  int? price;

  Burger(this.name) {}
}

class CheeseBurger extends Burger {
  CheeseBurger(String name) : super(name);
}
