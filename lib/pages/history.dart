import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/routes.dart';
import 'package:todo/utils/alert_history.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.todo);
                            },
                            icon: Icon(
                              weight: 5,
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
            ),
            SizedBox(
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.black,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "ToDo-list of Yesterday",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return History();
                              },
                            );
                          },
                          icon: Icon(
                            Icons.expand_circle_down_rounded,
                            color: Colors.white,
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
