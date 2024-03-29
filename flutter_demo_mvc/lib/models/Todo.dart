// {
//   "userId": 1,
//   "id": 1,
//   "title": "delectus aut autem",
//   "completed": false
// },

class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  // 선택적 매개변수
  Todo({this.userId, this.id, this.title, this.completed});

  Todo.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId.toString();
    data['id'] = this.id.toString();
    data['title'] = this.title;
    data['completed'] = this.completed.toString();
    return data;
  }
}
