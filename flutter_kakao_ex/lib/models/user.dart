class User {
  final String backgroundImage;
  final String name;
  final String intro;

  User(
      {this.backgroundImage =
          "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger_me_1.jpg",
      required this.name,
      required this.intro});
}

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

User me =
    User(backgroundImage: "${_urlPrefix}_me.jpg", name: "임희진", intro: "상태메세지");

List<User> friends = [
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
  User(
      backgroundImage: "${_urlPrefix}_woman_4.jpg",
      name: "정도전",
      intro: "앞이 보이겠습니까"),
];
