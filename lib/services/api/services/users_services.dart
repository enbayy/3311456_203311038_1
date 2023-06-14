import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/users_model.dart';

Future<List<kullanici>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => kullanici.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}