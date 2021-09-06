class Tasks{
  String name;
  bool isDone;

  Tasks({this.isDone=false, required this.name});

  void toggle(){
    isDone = !isDone;
  }
}