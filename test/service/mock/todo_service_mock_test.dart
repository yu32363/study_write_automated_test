import 'package:flutter_test/flutter_test.dart';
import 'package:user_todo/model/todo.dart';
import 'package:user_todo/service/mock/todo_service_mock.dart';

void main() {
  test('list todo from mock service', () async {
    final todoService = TodoServiceMock();
    List<Todo> todos = await todoService.listTodos();

    expect(todos.length, 2);

    expect(todos[0].id, 1);
    expect(todos[0].userId, 1);
    expect(todos[0].title, 'todo1');
    expect(todos[0].completed, false);

    expect(todos[1].id, 2);
    expect(todos[1].userId, 2);
    expect(todos[1].title, 'todo2');
    expect(todos[1].completed, true);
  });
}
