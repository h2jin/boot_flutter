class Post {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Post(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(json["albumId"], json['id'], json['title'], json['url'],
        json['thumbnailUrl']);
  }
}
