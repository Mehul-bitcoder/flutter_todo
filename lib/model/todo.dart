import 'package:flutter/foundation.dart';

class Todo {
  final int id;
  final String title;
  final bool status;

  Todo(this.id, this.title, this.status);
}

class TodoModel with ChangeNotifier {
  static List todos = [];

  List<dynamic> get getTodos {
    return todos;
  }

  Todo getById(int id) =>
      todos.firstWhere((element) => element.id == id, orElse: null);

  void addTodo(Map todo) {
    todos.add(todo);
    notifyListeners();
  }

  void removeTodo(int id) {
    todos.removeWhere((element) => element['id'] == id);
    notifyListeners();
  }

  void updateTodo(index, value) {
    todos[index]['taskCompleted'] = !todos[index]['taskCompleted'];
    notifyListeners();
  }
}
