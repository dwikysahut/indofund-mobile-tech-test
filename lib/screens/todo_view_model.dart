import 'package:flutter/material.dart';
import 'package:flutter_tech_test/models/todo_model.dart';
import 'package:flutter_tech_test/services/api_service.dart';

class TodoViewModel extends ChangeNotifier {
  List<TodoData>? todoList = [];

  TodoViewModel() {
    fetchData();
    todoList = [
      TodoData(
        todo: 'Groceries',
        isCompleted: true,
      ),
      TodoData(
        todo: 'Electricity Bill',
        isCompleted: false,
      ),
      TodoData(
        todo: 'Internet Subscription',
        isCompleted: true,
      ),
      TodoData(
        todo: 'Movie Tickets',
        isCompleted: false,
      ),
    ];
    notifyListeners();
  }

  Future fetchData() async {
    //tuliskan code disini
  }
}
