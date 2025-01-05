import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/pages/history.dart';
import 'package:todo/pages/splash_screen.dart';
import 'package:todo/pages/todo.dart';
import 'package:todo/pages/routes.dart';

void main() async {
  // Initialize Hive
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do App', // Give the app a meaningful title
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: Routes.splashscreen, // Use Routes.splashscreen as initial route
      routes: {
        Routes.splashscreen: (context) => const SplashScreen(),  // Set the splash screen route
        Routes.todo: (context) => ToDo(deleteTapped: (int index) {  },),  // Set ToDo route
        Routes.history: (context) => const HistoryScreen(),  // Set History route
      },
    );
  }
}
