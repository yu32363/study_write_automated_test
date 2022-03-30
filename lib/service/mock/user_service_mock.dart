import 'package:user_todo/model/user.dart';
import 'package:user_todo/service/user_service.dart';
import 'package:user_todo/util/app_client.dart';

class UserServiceMock implements UserService {
  @override
  late AppClient appClient;

  @override
  Future<List<User>> listUsers() async {
    var json = [
      {
        'id': 1,
        'name': 'User1',
        'username': 'username1',
        'email': 'user1@email.com'
      },
      {
        'id': 2,
        'name': 'User2',
        'username': 'username2',
        'email': 'user2@email.com'
      },
      {
        'id': 3,
        'name': 'User3',
        'username': 'username3',
        'email': 'user3@email.com'
      }
    ];
    return List.generate(
      json.length,
      (index) => User.fromJson(json[index]),
    );
  }
}
