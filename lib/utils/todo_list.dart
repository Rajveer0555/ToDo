import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {
  final String taskname;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  final VoidCallback? onClicked;

  ToDoTile({
    super.key,
    required this.taskname,
    required this.taskCompleted,
    required this.onChanged,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              taskname,
              style: TextStyle(
                fontSize: 18,
                color: taskCompleted ? Colors.black12: Colors.black,
              ),
            ),
            Checkbox(
              checkColor: Colors.black,
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
