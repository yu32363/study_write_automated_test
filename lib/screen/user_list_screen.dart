import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_todo/controller/user_list_screen_controller.dart';
import 'package:user_todo/screen/todo_list_screen.dart';

class UserListScreen extends StatelessWidget {
  final controller = UserListScreenController();
  UserListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.loadUsers();

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: Obx(
        () => ListView.builder(
          key: const Key('userList'),
          itemCount: controller.users.length,
          itemBuilder: (context, index) => ListTile(
            key: const Key('userRow'),
            title: Text(controller.users[index].name),
            subtitle: Text(controller.users[index].email),
            onTap: () => Get.to(() => const TodoListScreen()),
          ),
        ),
      ),
    );
  }
}
