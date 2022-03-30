import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:user_todo/screen/user_list_screen.dart';
import 'package:user_todo/service/mock/user_service_mock.dart';
import 'package:user_todo/service/user_service.dart';

void main() {
  UserService userService = UserServiceMock();
  Get.put(userService);
  runApp(
    GetMaterialApp(
      home: UserListScreen(),
    ),
  );
}
