import 'todo_data.dart';

class TodoModel {
  int? userId, id;
  String? title;
  bool? isCompleted;
  static List<TodoModel> finalTodoData = todoData
      .map(
        (e) => TodoModel.fromJson(e),
      )
      .toList();

  TodoModel(
      {required this.id,
      required this.isCompleted,
      required this.title,
      required this.userId});

  factory TodoModel.fromJson(Map json) {
    return TodoModel(
        id: json['id'],
        isCompleted: json['completed'],
        title: json['title'],
        userId: json['userId']);
  }
}
