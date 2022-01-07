import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:todolist/model/login_model.dart';

Future<ModelLogin?> createLoginState(String username, String password) async {
  final http.Response response = await http.post(
      Uri.parse('http://94.74.86.174:8080/api/login'),
      headers: <String, String>{
        'Auth-Token': 'application/json',
      },
      body: {
        'username': username,
        'password': password,
      });
  if (response.statusCode == 200) {
    print(response.body);
    return ModelLogin.fromJson(json.decode(response.body));
  } else {
    print('Failed');
  }
}
