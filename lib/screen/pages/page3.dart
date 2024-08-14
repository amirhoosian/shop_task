import 'package:flutter/material.dart';

class TreePage extends StatelessWidget {
  const TreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: 0,
            child: ClipOval(
              child: Image(
                  image: AssetImage('images/3.jpg'),
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover),
            )),
      ],
    );
  }
}
