void main(List<String> args) {
  var list = [1, 2, 3];
  var newList1 = list; // 얕은 복사
  var newList2 = [...list]; // 스프레드 연산자 - 깊은 복사 하나에 접근해서 실제로 뿌리는 것.

  print(list);
  print(newList1);
  print(newList2);
  print("======================");

  newList2[0] = 500; 
  // newList1[1] = 300;
  print(list);
  print(newList1);
}
