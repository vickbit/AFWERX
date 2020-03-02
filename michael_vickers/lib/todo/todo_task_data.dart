import 'package:flutter/foundation.dart';
import 'todo_task.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Talk to Mr. Vickers about a career!'),
    Task(name: 'Explain that we are looking to expand further'),
    Task(name: 'Building a team to help AFWERX expand!'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}