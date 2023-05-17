import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'homePage.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Column(
          children: const [
            Text(
              "SOABank mobile",
              style: TextStyle(
                  color: Color.fromARGB(255, 5, 86, 153),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            SpinKitFadingCircle(
              color: Colors.black,
              size: 30,
            )
          ],
        ),
        nextScreen: HomePage(),
      ),
    );
  }
}
