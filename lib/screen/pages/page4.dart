import 'package:flutter/material.dart';

class FourPage extends StatelessWidget {
  const FourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: 0,
            child: ClipOval(
              child: Image(
                  image: AssetImage('images/4.jpg'),
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover),
            )),
      ],
    );
  }
}
