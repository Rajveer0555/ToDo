import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:todo/data/database.dart';
import 'package:todo/pages/routes.dart';
import 'package:todo/utils/dialog_box.dart';
import 'package:todo/utils/todo_list.dart';

class ToDo extends StatefulWidget {
  final void Function(int index) deleteTapped; // The callback to delete a task
  ToDo({
    super.key,
    required this.deleteTapped,
  });

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    super.initState();
    if (_myBox.get("TODOLIST") == null) {
      db.createIntialData();
    } else {
      db.loadData();
    }
  }

  final _controller = TextEditingController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateDataBase();
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index); // Remove the task at the specified index
    });
    db.updateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: const BorderRadius.only(
                        bottomLeft:
                            Radius.circular(25.0), // Rounded bottom-left corner
                        bottomRight: Radius.circular(
                            25.0), // Rounded bottom-right corner
                      ),
                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.9999,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Hii, Rajveer',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Routes.history);
                                  },
                                  icon: const Icon(Icons.history),
                                  iconSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Task list',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount: db.toDoList.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                      key: ValueKey(index),
                      endActionPane: ActionPane(
                        key: ValueKey(index),
                        motion: const StretchMotion(),
                        children: [
                          SlidableAction(
                            onPressed: (context) {
                              deleteTask(index);
                            },
                            icon: Icons.delete_outline,
                            backgroundColor: Colors.redAccent.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ],
                      ),
                      child: ToDoTile(
                        taskname: db.toDoList[index][0],
                        taskCompleted: db.toDoList[index][1],
                        onChanged: (value) => checkBoxChanged(value, index),
                        onClicked: () => deleteTask(index),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 55),
                      backgroundColor: Colors.black,
                    ),
                    child: Text(
                      'Submit',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return DialogBox(
                            onSave: saveNewTask,
                            controller: _controller,
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.add_circle_outlined,
                      color: Colors.black,
                      size: 55,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
