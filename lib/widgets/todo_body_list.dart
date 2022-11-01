import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/todo_item.dart';

class TodoBodyList extends StatefulWidget {
  const TodoBodyList({super.key, required this.list});
  final list;
  @override
  State<TodoBodyList> createState() => _TodoBodyListState();
}

class _TodoBodyListState extends State<TodoBodyList> {
  var todoModel = TodoModel();
  void onChange(Map todo, bool? value, int index) {
    todoModel.updateTodo(index, value);
    print(TodoModel.todos);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          var listItem = widget.list[index];
          return TodoItem(
              id: listItem['id'],
              taskName: listItem['taskName'],
              taskCompleted: listItem['taskCompleted'],
              onChanged: (value) {
                onChange(listItem, value, index);
              });
        });
  }
}
