import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:user_todo/screen/user_list_screen.dart';
import 'package:user_todo/service/mock/user_service_mock.dart';
import 'package:user_todo/service/user_service.dart';

void main() {
  testWidgets('user list screen ...', (tester) async {
    UserService userService = UserServiceMock();
    Get.put(userService);

    final userListScreen = UserListScreen();
    await tester.pumpWidget(
      GetMaterialApp(home: userListScreen),
    );

    await tester.pumpAndSettle();

    final userListViewFinder = find.byKey(const Key('userList'));
    expect(userListViewFinder, findsOneWidget);

    final rowsFinder = find.byKey(const Key('userRow'));
    expect(tester.widgetList(rowsFinder).length, 3);
  });
}
