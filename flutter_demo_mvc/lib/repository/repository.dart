import '../models/Todo.dart';

abstract class Repository {
  Future<List<Todo>> getTodoList();
  Future<String> putCompleted(Todo todo);
  Future<String> deletedTodo(Todo todo);
  Future<String> postTodo(Todo todo);
  Future<String> patchCompleted(Todo todo);

  // post 나 albums 등 더 넣을 수 있음.

}
