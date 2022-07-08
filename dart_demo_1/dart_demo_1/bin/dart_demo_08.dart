import 'dart:math';

void main(List<String> args) {
  Set<int> lotto = {};

  // Random 클래스 사용
  Random random = Random();
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  print(lotto);
  // set 계열 바로 변환시킬 수 있음.
  List<int> lottoList = lotto.toList(); // 알아서 캐스팅 되어 List 타입으로 전환 됨
  lottoList.sort(); // 정렬 가능
  print(lottoList);
}
