import 'package:user_todo/model/todo.dart';
import 'package:user_todo/util/app_client.dart';
import 'package:get/get.dart';

class TodoService {
  var appClient = Get.find<AppClient>();
  Future<List<Todo>> listTodos() async {
    try {
      var json = await appClient.get(Uri());
      return List.generate(
        json.length,
        (index) => Todo.fromJson(json[index]),
      );
    } catch (error) {
      rethrow;
    }
  }
}
