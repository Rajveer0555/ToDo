import 'package:flutter/material.dart';
import 'package:todo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;

  // GlobalKey for FormState to validate the form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  DialogBox({super.key, required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 165,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 15,
            ),
            // Wrap TextFormField with a Form to apply validation
            Form(
              key: _formKey, // Assign the global key to the form
              child: TextFormField(
                textCapitalization: TextCapitalization.sentences,
                controller: controller,
                decoration: InputDecoration(
                  focusColor: Colors.amber,
                  labelStyle: TextStyle(color: Colors.black),
                  labelText: 'Add new task',
                  enabledBorder: OutlineInputBorder(),
                ),
                // Validator function to check for at least 1 character
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a task';
                  }
                  return null; // Return null if validation passes
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 160,
                ),
                // Update onPressed to validate before calling onSave
                MyButton(
                  onPressed: () {
                    // Trigger form validation
                    if (_formKey.currentState?.validate() == true) {
                      onSave(); // Call onSave only if the form is valid
                    }
                  },
                  text: "Add",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
