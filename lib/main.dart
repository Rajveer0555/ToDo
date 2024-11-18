import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/history.dart';

import 'package:todo/pages/splash_screen.dart';
import 'package:todo/pages/todo.dart';
import 'package:todo/pages/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        // home: HistoryScreen());
        routes: {
          "/": (context) => const SplashScreen(),
          Routes.splashscreen: (context) => const ToDo(),
          Routes.todo: (context) => const ToDo(),
          Routes.history: (context) => const HistoryScreen(),
        });
  }
}
