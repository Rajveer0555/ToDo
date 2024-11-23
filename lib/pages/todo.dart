import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/routes.dart';
import 'package:todo/utils/dialog_box.dart';
import 'package:todo/utils/todo_list.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});
  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  final _controller = TextEditingController();

  List toDoList = [];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList [index][1];                                     
    });
  }

  void saveNewTask () {
    setState(() {
      toDoList.add([ _controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void deleteTask (int index) {
    setState(() {
      toDoList.removeAt(index);
    });
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
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Text(
                  'Todo-list',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 380,
                    height: 400,
                    child: ListView.builder(
                      itemCount: toDoList.length,
                      itemBuilder: (context, index) {
                      return ToDoTile(
                        taskname: toDoList[index][0],
                        taskCompleted: toDoList[index][1],
                        onChanged: (value) => checkBoxChanged(value, index),
                        onClicked: () => deleteTask(index) ,
                      );
                    }),
                  )
                ],
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 48),
                    backgroundColor: const Color.fromARGB(255, 208, 255, 0)),
                child: Text('Submit',
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                width: 40,
              ),
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
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
