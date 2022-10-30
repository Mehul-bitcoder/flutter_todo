import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/widgets/theme.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key});

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool checkBoxVal = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppTheme.darkGrey,
        ),
        height: MediaQuery.of(context).size.height * 0.075,
        child: Padding(
          padding: const EdgeInsets.all(10),
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
                        value: checkBoxVal,
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxVal = value!;
                          });
                          print(checkBoxVal);
                        }),
                  ),
                  Text(
                    "Todo Item",
                    style: TextStyle(
                        color: AppTheme.darkBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              IconButton(
                color: AppTheme.darkBlue,
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.delete_solid,
                  size: 25,
                  color: AppTheme.darkBlue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
