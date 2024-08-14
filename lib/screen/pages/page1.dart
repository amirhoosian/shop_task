import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  OnePage({super.key});
  int cust = 30;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: 0,
            child: ClipOval(
                child: Image(
              image: AssetImage('images/1.png'),
              width: 152,
              height: 152,
              fit: BoxFit.cover,
            ))),
      ],
    );
  }
}
