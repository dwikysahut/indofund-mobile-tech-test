import 'package:flutter/material.dart';
import 'package:flutter_tech_test/models/todo_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transaction,
  });

  final TodoData? transaction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(transaction?.todo ?? ''),
      subtitle: Text('Deskripsi ${transaction?.todo}'),
      trailing: Icon(
        transaction?.isCompleted ?? false ? Icons.check : Icons.close,
        color: transaction?.isCompleted ?? false ? Colors.green : Colors.red,
      ),
    );
  }
}
