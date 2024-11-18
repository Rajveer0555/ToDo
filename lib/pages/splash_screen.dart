import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 280,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.todo);
                },
                child: Text(
                  "ToDo",
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 208, 255, 0),
                    fontWeight: FontWeight.w700,
                    fontSize: 70
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 250,
                ),
                Text(
                  'created by GhOsT',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
