import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/routes.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
          backgroundColor: Colors.white,
          content: SizedBox(
            height: 125,
            child: Column(
              children: [
                Title(
                    color: Colors.black,
                    child: Text(
                      "Add new task",
                      style: GoogleFonts.poppins(fontSize: 18),
                    )),
                TextField(
      
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 208, 255, 0)),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.todo);
                    },
                    child: Text(
                      "Add",
                      style: GoogleFonts.poppins(color: Colors.black),
                    ))
              ],
            ),
          )),
    );
  }
}
