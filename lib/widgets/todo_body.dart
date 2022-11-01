import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/theme.dart';
import 'package:todo_app/widgets/todo_body_list.dart';

class TodoBody extends StatelessWidget {
  const TodoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: AppTheme.lightGrey),
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Consumer<TodoModel>(builder: (context, value, child) {
              var list = value.getTodos;
              return TodoBodyList(list: list);
            })),
      ),
    );
  }
}
