import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {
  final String taskname;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key,
    required this.taskname,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
      ),
      child: Container(
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: const Color.fromARGB(255, 208, 255, 0),
            ),
            Text(
              taskname,
              style: TextStyle(
                color: taskCompleted ? Colors.grey.shade900 : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
