import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/routes.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromARGB(255, 208, 255, 0),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.todo);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 30,
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    "History",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 80,
              width: 360,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Yesterday",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 360,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Nov 16,2024",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 360,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Nov 15,2024",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 360,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Nov 14,2024",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 360,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Nov 13,2024",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 360,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Nov 12,2024",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 360,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Nov 11,2024",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 360,
              child: Card(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Nov 10,2024",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.black,
                            size: 30,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
