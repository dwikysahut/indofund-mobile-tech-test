class TodoData {
  int? userId;
  int? id;
  String? todo;
  bool? isCompleted;

  TodoData({this.userId, this.id, this.todo, this.isCompleted});

  factory TodoData.fromJson(Map<String, dynamic> json) {
    return TodoData(
      userId: json['userId'],
      id: json['id'],
      todo: json['todo'],
      isCompleted: json['completed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': todo,
      'completed': isCompleted,
    };
  }
}
