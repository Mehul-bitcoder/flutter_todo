import "package:flutter/material.dart";
import 'package:todo_app/widgets/theme.dart';
import 'package:todo_app/widgets/todo_body_list.dart';

class TodoBody extends StatefulWidget {
  const TodoBody({super.key});

  @override
  State<TodoBody> createState() => _TodoBodyState();
}

class _TodoBodyState extends State<TodoBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: AppTheme.lightGrey),
        child:
            const Padding(padding: EdgeInsets.all(20), child: TodoBodyList()),
      ),
    );
  }
}
