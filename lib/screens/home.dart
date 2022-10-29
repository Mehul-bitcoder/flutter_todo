import "package:flutter/material.dart";
import 'package:todo_app/widgets/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.darkBlue,
      body: const Center(child: Text("Todo App")),
    );
  }
}
