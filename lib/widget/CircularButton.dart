import 'package:flutter/material.dart';
import 'package:weweatherapp/Pages/HomePage.dart';

class CircularButton extends StatelessWidget {
  final String text;

  const CircularButton(
      {super.key, required this.text}); // Perbaikan penamaan parameter

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Homepage()),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(142, 172, 205, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }
}
