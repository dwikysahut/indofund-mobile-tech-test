import 'package:flutter/material.dart';
import 'package:flutter_tech_test/components/todo_item.dart';
import 'package:flutter_tech_test/screens/todo_view_model.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoViewModel(),
      child: Consumer<TodoViewModel>(
        builder: (context, transactionViewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Todo List'),
              backgroundColor: Colors.orange,
            ),
            body: Container(
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: ListView.separated(
                itemCount: transactionViewModel.todoList?.length ?? 0,
                itemBuilder: (context, index) {
                  final transaction = transactionViewModel.todoList?[index];
                  return TransactionItem(transaction: transaction);
                },
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
