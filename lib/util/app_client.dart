import 'dart:convert';

import 'package:http/http.dart' as http;

class AppClient {
  final http.Client client;

  // IoC Inversion pf Control
  // Dependency Injection

  AppClient(this.client);

  Future get(Uri endPoint) async {
    try {
      var response = await http.get(endPoint);
      var json = jsonDecode(response.body);
      return json;
    } catch (error) {
      rethrow;
    }
  }
}
