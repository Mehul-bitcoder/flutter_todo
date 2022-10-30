import 'package:flutter/material.dart';
import 'package:todo_app/widgets/theme.dart';
import 'package:todo_app/widgets/todo_head_info.dart';
import 'package:todo_app/widgets/todo_input.dart';

class TodoHead extends StatelessWidget {
  const TodoHead({super.key});

  @override
  Widget build(BuildContext context) {
    var taskCount = 0;
    return Container(
      // decoration: BoxDecoration(color: Colors.amber),
      height: MediaQuery.of(context).size.height * 0.4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
            ),
            const TodoHeadInfo(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 30,
            ),
            TodoInput(),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Text(
                "You have $taskCount Tasks",
                style: TextStyle(color: AppTheme.white, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
