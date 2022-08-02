import 'dart:convert';

import 'package:flutter_demo_mvc/models/Todo.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository {
  String dataUrl = "https://jsonplaceholder.typicode.com";

  @override
  Future<String> deletedTodo(Todo todo) {
    // TODO: implement deletedTodo
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodoList() async {
    // 전체 리스트를 받는 메서드
    List<Todo> todoList = [];
    var url = Uri.parse('${dataUrl}/todos'); // URI 클래스로 변환
    var response = await http.get(url);
    print("statusCode : ${response.statusCode}");
    print("body : ${response.body}");
    var body = json.decode(response.body);
    print("delcode : ${body}");
    // 파싱처리
    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }
    return todoList;
  }

  // REST API
  // GET, DELETE -> body X
  // POST, PUT, PATCH -> body O
  @override
  Future<String> patchCompleted(Todo todo) async {
    // .../todos/1
    var uri = Uri.parse('${dataUrl}/todos/${todo.id}');
    String resData = '';
    await http.patch(
      uri,
      body: {'completed': (todo.completed!).toString()},
    ).then((response) {
      print("response : ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['completed'];
    });
    return resData;
  }

  @override
  Future<String> postTodo(Todo todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(Todo todo) async {
    var url = Uri.parse('${dataUrl}/todos/1');
    String resData = '';
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    await http
        .put(url, body: todo.toJson().toString(), headers: headers)
        .then((response) {
      print("response: ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result.toString();
    });
    return resData;
  }
}
