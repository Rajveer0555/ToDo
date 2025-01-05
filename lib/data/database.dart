import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  final _myBox = Hive.box('mybox');
  // For Start
  void createIntialData() {
    toDoList = [];
  }
  // For load data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }
  // Update Data
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}