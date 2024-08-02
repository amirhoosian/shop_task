import 'package:flutter/material.dart';

class TreePage extends StatelessWidget {
  const TreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Positioned(
          top: 75,
          child: ClipOval(
            child: Image(
                image: AssetImage('images/1.png'),
                width: 160,
                height: 160,
                fit: BoxFit.cover),
          )),
    );
  }
}
