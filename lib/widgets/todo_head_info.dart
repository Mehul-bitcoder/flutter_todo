import "package:flutter/material.dart";
import 'package:todo_app/widgets/theme.dart';

class TodoHeadInfo extends StatelessWidget {
  const TodoHeadInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TodoHeadInfoText(),
          Container(
            width: 80,
            height: 80,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
          ),
        ],
      ),
    );
  }
}

class TodoHeadInfoText extends StatelessWidget {
  const TodoHeadInfoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hello User",
          style: TextStyle(
              color: AppTheme.white, fontSize: 26, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "What are you doing Today?",
          style: TextStyle(
              color: AppTheme.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
