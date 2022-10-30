import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_item.dart';

class TodoBodyList extends StatelessWidget {
  const TodoBodyList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const TodoItem();
        });
  }
}
