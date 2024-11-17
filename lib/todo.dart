import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});
  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  bool? _isChecked = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
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
              onPressed: () {},
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
            padding: const EdgeInsets.only(left: 15),
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
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 12),
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              CheckboxListTile(
                title: Text(
                  "Typing practise",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                value: _isChecked,
                onChanged: (bool? newvalue) {
                  setState(() {
                    _isChecked = newvalue;
                  });
                },
                activeColor: const Color.fromARGB(255, 208, 255, 0),
                checkColor: Colors.black,
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text(
                  "Dart basic",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                value: _isChecked2,
                onChanged: (bool? newvalue1) {
                  setState(() {
                    _isChecked2 = newvalue1;
                  });
                },
                activeColor: const Color.fromARGB(255, 208, 255, 0),
                checkColor: Colors.black,
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text(
                  "Flutter code practise",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                value: _isChecked3,
                onChanged: (bool? newvalue1) {
                  setState(() {
                    _isChecked3 = newvalue1;
                  });
                },
                activeColor: const Color.fromARGB(255, 208, 255, 0),
                checkColor: Colors.black,
                controlAffinity: ListTileControlAffinity.leading,
              )
            ],
          ),
          const SizedBox(
            height: 472,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_circle_outlined,
            color: Color.fromARGB(255, 208, 255, 0),
            size: 55,
          ),
        ),
      ),
    );
  }
}
