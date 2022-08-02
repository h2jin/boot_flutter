class User {
  final String backgroundImage;
  final String name;
  final String intro;

  User(
      {this.backgroundImage =
          "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger_me_1.jpg",
      required this.name,
      required this.intro});
} // end of user class

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

// 샘플 (나)

User me =
    User(backgroundImage: "${_urlPrefix}_me.jpg", name: "임희진", intro: "상태메세지");

List<User> friends = [
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_man_1.jpg",
      name: "홍길동",
      intro: "아버지라 불러도 되겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_1.jpg",
      name: "박태수",
      intro: "지금 어디에 와 있을까"),
  User(
      backgroundImage: "${_urlPrefix}_man_2.jpg",
      name: "김상중",
      intro: "그런데 말입니다"),
  User(backgroundImage: "${_urlPrefix}_man_3.jpg", name: "김두한", intro: "4딸라"),
  User(
      backgroundImage: "${_urlPrefix}_woman_2.jpg",
      name: "심영",
      intro: "고통 없이 얻는 건 없다"),
  User(
      backgroundImage: "${_urlPrefix}_woman_3.jpg",
      name: "교강용",
      intro: "고통 없이 얻는 건 없다"),
  User(backgroundImage: "${_urlPrefix}_man_4.jpg", name: "해쭈", intro: "츄베릅"),
  User(
      backgroundImage: "${_urlPrefix}_woman_5.jpg",
      name: "박지현",
      intro: "고통 없이 얻는 건 없다"),
  User(
      backgroundImage: "${_urlPrefix}_man_5.jpg",
      name: "박지현",
      intro: "고통 없이 얻는 건 없다"),
];
