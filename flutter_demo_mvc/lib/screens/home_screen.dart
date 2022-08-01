import 'package:flutter/material.dart';
import 'package:flutter_demo_mvc/controller/todo_controller.dart';
import 'package:flutter_demo_mvc/repository/todo_repository.dart';

import '../models/Todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todoController = TodoController(TodoRepository()); // 의존주입(DI)

    return Scaffold(
      appBar: AppBar(
        title: Text("REST API EX"),
      ),
      body: FutureBuilder<List<Todo>>(
        // 명시해주기
        future: todoController.fetchTodoList(),
        builder: (context, snapshot) {
          // snapshot에 성공한 데이터들이 넘어온다.
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(), // 통신중이면 계속 돌아가는 아이콘 보이게 됨.
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("ERROR"),
            );
          }
          return buildBodyContent(snapshot,
              todoController); //create Method 가 아닌 create Function으로 만들어줌
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // post 호출
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget buildBodyContent(
    AsyncSnapshot<List<Todo>> snapshot, TodoController todoController) {
  // 명시해주기
  return SafeArea(
    child: ListView.separated(
        itemBuilder: (context, index) {
          var todo = snapshot.data?[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 100,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text('${todo?.id ?? 'id'}'),
                ),
                Expanded(
                  flex: 3,
                  child: Text('${todo?.title ?? 'title'}'),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      InkWell(
                        child: buildCallContainer('put', Color(0xFFF1BEE7)),
                        onTap: () {
                          print("컨트롤러 사용하는 방법");
                          print("then()");
                          todoController.putTodo(todo!).then((value) {
                            print('value: $value');
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: Duration(milliseconds: 500),
                              content: Text("$value~"),
                            ));
                          });
                        },
                      ),
                      InkWell(
                        child: buildCallContainer('patch', Color(0xFFFFCDD2)),
                        onTap: () {
                          todoController
                              .updatePatchCompleted(todo!)
                              .then((value) {
                            print('value: $value');
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              duration: const Duration(milliseconds: 500),
                              content: Text('$value'),
                            ));
                          });
                        },
                      ),
                      InkWell(
                        child: buildCallContainer('del', Color(0xFFFFCDD2)),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 0.5,
            height: 0.5,
          );
        },
        itemCount: snapshot.data?.length ?? 0), // null 대체연산자. nullSafety
  );
}

Container buildCallContainer(String title, Color color) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Center(
      child: Text('${title}'),
    ),
  );
}
