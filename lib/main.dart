import 'package:flutter/material.dart';
import 'package:quiz_app/landingpage.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ Color.fromARGB(255, 55, 1, 110), Color.fromARGB(255, 103, 0, 206)]
            )
          ),
          child: LandingPage(),
        ),
      ),
    ),
  );
}
