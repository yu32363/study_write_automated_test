import 'package:user_todo/model/todo.dart';
import 'package:user_todo/service/todo_service.dart';
import 'package:user_todo/util/app_client.dart';

class TodoServiceMock implements TodoService {
  @override
  late AppClient appClient;

  @override
  Future<List<Todo>> listTodos() async {
    var json = [
      {
        'userId': 1,
        'id': 1,
        'title': 'todo1',
        'completed': false,
      },
      {
        'userId': 2,
        'id': 2,
        'title': 'todo2',
        'completed': true,
      },
    ];
    return List.generate(
      json.length,
      (index) => Todo.fromJson(json[index]),
    );
  }
}
