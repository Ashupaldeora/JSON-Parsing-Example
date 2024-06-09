# JSON Parsing in Flutter

This project demonstrates how to parse JSON data in Flutter using Dart.


## Data

```dart
List todoData = [
  {"userId": 1,
   "id": 1, 
   "title": "delectus aut autem", 
   "completed": false
   },
  {
    "userId": 1,
    "id": 2,
    "title": "quis ut nam facilis et officia qui",
    "completed": false
  },
```
## Parsing

```dart
class TodoModel {
  int? userId, id;
  String? title;
  bool? isCompleted;

  static List<TodoModel> finalTodoData = todoData
    .map(
      (e) => TodoModel.fromJson(e),
    )
    .toList();

  TodoModel({
    required this.id,
    required this.isCompleted,
    required this.title,
    required this.userId,
  });

  factory TodoModel.fromJson(Map json) {
    return TodoModel(
      id: json['id'],
      isCompleted: json['completed'],
      title: json['title'],
      userId: json['userId'],
    );
  }
}
```


