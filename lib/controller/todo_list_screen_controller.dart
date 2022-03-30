import 'package:get/get.dart';
import 'package:user_todo/model/todo.dart';
import 'package:user_todo/service/todo_service.dart';

class TodoListScreenController extends GetxController {
  final todos = <Todo>[].obs;
  final todoService = Get.find<TodoService>();

  Future loadTodos() async {
    try {
      this.todos.clear();
      final todos = await todoService.listTodos();
      this.todos.addAll(todos);
    } catch (error) {
      rethrow;
    }
  }
}
