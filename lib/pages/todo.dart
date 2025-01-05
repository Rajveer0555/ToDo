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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "To-Do",
          style: GoogleFonts.poppins(
            color: const Color.fromARGB(255, 208, 255, 0),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.history);
              },
              icon: const Icon(Icons.history),
              iconSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text(
                  'Tasks list',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: db.toDoList.length,
              itemBuilder: (context, index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const StretchMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          widget.deleteTapped(
                              index); // Trigger the delete callback
                        },
                        icon: Icons.delete_outline,
                        backgroundColor: Colors.redAccent.shade400,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    onHorizontalDragEnd: (details) {
                      // Handle sliding here if needed
                    },
                    child: ToDoTile(
                      taskname: db.toDoList[index][0],
                      taskCompleted: db.toDoList[index][1],
                      onChanged: (value) => checkBoxChanged(value, index),
                      onClicked: () => deleteTask(index),
                    ),
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
                  fixedSize: const Size(200, 48),
                  backgroundColor: const Color.fromARGB(255, 208, 255, 0),
                ),
                child: Text(
                  'Submit',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
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
                  color: Color.fromARGB(255, 208, 255, 0),
                  size: 55,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
