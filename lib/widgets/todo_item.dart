import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/theme.dart';

class TodoItem extends StatelessWidget {
  final String taskName;
  final int id;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  TodoItem(
      {super.key,
      required this.id,
      required this.taskName,
      required this.taskCompleted,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppTheme.darkGrey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Transform.scale(
                  scale: 1.4,
                  child: Checkbox(
                    fillColor: MaterialStateProperty.all(AppTheme.darkBlue),
                    shape: const CircleBorder(),
                    value: taskCompleted,
                    onChanged: onChanged,
                  ),
                ),
                Text(
                  taskName,
                  style: TextStyle(
                      decoration: taskCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                      color: AppTheme.darkBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            IconButton(
              color: AppTheme.darkBlue,
              onPressed: (() => Provider.of<TodoModel>(context, listen: false)
                  .removeTodo(id)),
              icon: Icon(
                CupertinoIcons.delete_solid,
                size: 25,
                color: AppTheme.darkBlue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
