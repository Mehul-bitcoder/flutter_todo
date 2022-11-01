import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/widgets/theme.dart';

class TodoInput extends StatelessWidget {
  TodoInput({super.key});
  final inputKey = GlobalKey();
  final _controller = TextEditingController();
  var todoModel = TodoModel();

  void handleClick() {
    todoModel.addTodo(
        {'id': 123, 'taskName': _controller.text, 'taskCompleted': false});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      alignment: Alignment.center,
      child: TextFormField(
        controller: _controller,
        key: inputKey,
        style: TextStyle(
            color: AppTheme.white, fontSize: 16, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10),
            fillColor: AppTheme.lightBlue,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppTheme.lightBlue),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: "Add Todo",
            hintStyle: TextStyle(color: AppTheme.white),
            suffixIcon: Container(
              height: MediaQuery.of(context).size.height - 1,
              width: MediaQuery.of(context).size.width * 0.13,
              decoration: BoxDecoration(
                  color: AppTheme.white,
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                color: AppTheme.darkBlue,
                icon: const Icon(
                  Icons.add,
                  size: 30,
                ),
                onPressed: (() =>
                    Provider.of<TodoModel>(context, listen: false).addTodo({
                      'id': DateTime.now().millisecondsSinceEpoch,
                      'taskName': _controller.text,
                      'taskCompleted': false
                    })),
              ),
            )),
      ),
    );
  }
}
