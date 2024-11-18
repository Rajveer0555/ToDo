import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/routes.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});
  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  // bool? _isChecked = false;
  // bool? _isChecked2 = false;
  // bool? _isChecked3 = false;
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
        title: const Image(
          image: AssetImage('assets/Logo.png'),
          height: 150,
          width: 180,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          const SizedBox(
            height: 90,
          ),
          Image(
            image: AssetImage("assets/main.png"),
            height: 200,
            width: 200,
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
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
                onPressed: () {},
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
