import 'package:flutter/material.dart';

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
                const Text(
                  'Todo-list',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit',
                      style: TextStyle(color: Colors.white, fontSize: 12),
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
                title: const Text(
                  "Typing practise",
                  style: TextStyle(color: Colors.white),
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
                title: const Text(
                  "Dart basic",
                  style: TextStyle(color: Colors.white),
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
                title: const Text(
                  "Flutter code practise",
                  style: TextStyle(color: Colors.white),
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
            height: 440,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(200, 48),
                        backgroundColor:
                            const Color.fromARGB(255, 208, 255, 0)),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 25,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outlined,
                  color: Color.fromARGB(255, 208, 255, 0),
                  size: 48,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
