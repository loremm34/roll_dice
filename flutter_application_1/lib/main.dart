import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:   GradientContainer(
           colors: [
            Color.fromARGB(255, 150, 92, 204),
            Color.fromARGB(255, 209, 201, 201)
          ],
        ),
      ),
    ),
  );
}
