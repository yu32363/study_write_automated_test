import 'package:user_todo/model/user.dart';
import 'package:user_todo/util/app_client.dart';
import 'package:get/get.dart';
import 'package:user_todo/util/endpoint.dart';

class UserService {
  var appClient = Get.find<AppClient>();
  Future<List<User>> listUsers() async {
    try {
      var json = await appClient.get(Endpoint.listUsers());
      return List.generate(
        json.length,
        (index) => User.fromJson(json[index]),
      );
    } catch (error) {
      rethrow;
    }
  }
}
