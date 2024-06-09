import 'json_parsing_todo.dart';
import 'todo_data.dart';

void main() {
  for (final elements in TodoModel.finalTodoData) {
    print("user Id : ${elements.userId}");
    print("Id : ${elements.id}");
    print("title : ${elements.title}");
    print("isCompleted : ${elements.isCompleted}");
  }
}
