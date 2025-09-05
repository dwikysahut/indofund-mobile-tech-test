import 'package:dio/dio.dart';
import 'package:flutter_tech_test/models/base_response_model.dart';
import 'package:flutter_tech_test/models/todo_model.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'https://dummyjson.com',
    connectTimeout: Duration(seconds: 10),
    receiveTimeout: Duration(seconds: 10),
  ));

  Future<List<TodoData>?> fetchTodos() async {
    //task tuliskan disini
    return null;
  }
}
