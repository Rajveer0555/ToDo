import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/routes.dart';
import 'package:todo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  
  DialogBox({super.key, required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.white,
        content: SizedBox(
          height: 130,
          child: Column(
            children: [
              Title(
                  color: Colors.black,
                  child: Text(
                    "Add new task",
                    style: GoogleFonts.poppins(fontSize: 16),
                  )),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              MyButton(onPressed: onSave, text: "Add")
            ],
          ),
        ));
  }
}
