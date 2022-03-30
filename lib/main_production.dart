import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:user_todo/screen/user_list_screen.dart';
import 'package:user_todo/service/user_service.dart';
import 'package:user_todo/util/app_client.dart';

void main() {
  Get.put(AppClient(http.Client()));
  Get.put(UserService());
  runApp(
    GetMaterialApp(
      home: UserListScreen(),
    ),
  );
}
