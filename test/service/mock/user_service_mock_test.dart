import 'package:flutter_test/flutter_test.dart';
import 'package:user_todo/model/user.dart';
import 'package:user_todo/service/mock/user_service_mock.dart';

void main() {
  test('list user from mock service', () async {
    final todoService = UserServiceMock();
    List<User> todos = await todoService.listUsers();

    expect(todos.length, 3);
  });
}
