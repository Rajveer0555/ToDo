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
      padding: const EdgeInsets.only(
        left: 12,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                  activeColor: const Color.fromARGB(255, 208, 255, 0),
                ),
                Text(
                  taskname,
                  style: TextStyle(
                    color: taskCompleted ? Colors.grey.shade400 : Colors.white,
                  ),
                ),
              ],
            ),
            IconButton(onPressed: onClicked, icon: Icon(Icons.delete,color: Colors.white,))
          ],
        ),
      ),
    );
  }
}
