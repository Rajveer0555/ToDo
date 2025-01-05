// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  VoidCallback onPressed;
  final String text;
   MyButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 208, 255, 0)),
      child: Text(text,style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600),),
    );
  }
}
