class Album {
  int userId;
  int id;
  String title;

  Album(this.userId, this.id, this.title);

  // factory 패턴 아님. factory 타입이다.
  // 싱글톤 패턴. 즉 한 번 생성된 객체를 재활용하기 위해 사용한다.
  // 매개변수 map 을 사용하여 dart OBject를 Album Object로 변환하는 코드이다.
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(json['userId'], json['id'], json['title']);
  }
}
