import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basketball",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BasketballAnimation(),
    );
  }
} // MyApp

class BasketballAnimation extends StatelessWidget {
  const BasketballAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kitler",
          style: TextStyle(color: Color(0xFFFFFFFF)),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xFF7b4893),
      ),
      body: Container(
        color: Color(0xFF7b4893),
        height: double.infinity,
        child: Stack(
          children: [
            Center(
              child: RiveAnimation.asset(
                'assets/cat_idle.riv',
                fit: BoxFit.fitWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
