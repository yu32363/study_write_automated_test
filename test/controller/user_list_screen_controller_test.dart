import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:user_todo/controller/user_list_screen_controller.dart';
import 'package:user_todo/service/mock/user_service_mock.dart';
import 'package:user_todo/service/user_service.dart';

void main() {
  test('list users', () async {
    UserService userService = UserServiceMock();
    Get.put(userService);

    final controller = UserListScreenController();
    await controller.loadUsers();

    expect(controller.users, isNotNull);
    expect(controller.users.length, 3);
  });
}
