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
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                taskname,
                style: TextStyle(
                  fontSize: 22,
                  color: taskCompleted ? Colors.grey.shade600 : Colors.white,
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
      ),
    );
  }
}
