import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                  height: 220,
                ),
            Image(
              image: AssetImage('assets/Logo.png'),
              height: 350,
              width: 350,
              fit: BoxFit.contain,
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 190,
                ),
                Text('created by GhOsT',style: TextStyle(color: Colors.white,),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
