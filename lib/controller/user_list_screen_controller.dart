import 'package:get/get.dart';
import 'package:user_todo/model/user.dart';
import 'package:user_todo/service/user_service.dart';

class UserListScreenController extends GetxController {
  final users = <User>[].obs;
  final userService = Get.find<UserService>();

  Future loadUsers() async {
    try {
      this.users.clear();
      final users = await userService.listUsers();
      this.users.addAll(users);
    } catch (error) {
      rethrow;
    }
  }
}
