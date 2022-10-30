import "package:flutter/material.dart";
import 'package:todo_app/widgets/theme.dart';

class TodoInput extends StatefulWidget {
  const TodoInput({super.key});

  @override
  State<TodoInput> createState() => _TodoInputState();
}

class _TodoInputState extends State<TodoInput> {
  final inputKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      alignment: Alignment.center,
      child: TextFormField(
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
                onPressed: () {
                  print(context.size);
                },
              ),
            )),
      ),
    );
  }
}
