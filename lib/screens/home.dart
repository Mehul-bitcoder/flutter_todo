import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/theme.dart';
import 'package:todo_app/widgets/todo_body.dart';
import 'package:todo_app/widgets/todo_head.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBlue,
      body: SafeArea(
        child: ChangeNotifierProvider(
            create: (context) => TodoModel(),
            child: Column(
              children: [TodoHead(), const TodoBody()],
            )),
      ),
    );
  }
}
