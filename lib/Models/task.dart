class Task {
  final String name;
  bool isDone;
  void toggleDone() {
    isDone = !isDone;
  }

  Task({required this.name, this.isDone=false});
}
