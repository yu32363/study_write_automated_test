import 'package:flutter_test/flutter_test.dart';
import 'package:user_todo/model/user.dart';

void main() {
  test('create user form JSON', () {
    var json = {
      'id': 1,
      'name': 'Sawatdikiat',
      'email': 'sawatdikiat_sa@dtgo.com'
    };

    var user = User.fromJson(json);

    expect(user.id, 1);
    expect(user.name, 'Sawatdikiat');
    expect(user.email, 'sawatdikiat_sa@dtgo.com');
  });

  test('ถ้าไม่มี name จะกำหนดให้ name เป็น Untitled', () {
    var json = {
      'id': 1,
      'email': 'sawatdikiat_sa@dtgo.com',
    };
    var user = User.fromJson(json);

    expect(user.name, 'Untitled');
  });

  test('ถ้ามี name แต่เป็นค่าว่าง จะกำหนดให้ name เป็น Untitled', () {
    var json = {
      'id': 1,
      'name': '',
      'email': 'sawatdikiat_sa@dtgo.com',
    };
    var user = User.fromJson(json);

    expect(user.name, 'Untitled');
  });
}
