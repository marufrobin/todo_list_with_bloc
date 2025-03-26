class TodoListModel {
  final String name;
  final DateTime createdAt;

  TodoListModel({required this.name, required this.createdAt});

  @override
  String toString() => 'TodoListModel(name: $name, createdAt: $createdAt)';
}
