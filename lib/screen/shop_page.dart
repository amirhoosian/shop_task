import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopPage extends StatelessWidget {
  final _controller = PageController();

  ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          title: RichText(
            text: TextSpan(
                text: 'X',
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: [
                  TextSpan(
                      text: 'E', style: TextStyle(fontWeight: FontWeight.w100)),
                ]),
          ),
          centerTitle: true,
          actions: [
            Container(
              height: 30,
              child: DecoratedBox(
                position: DecorationPosition.background,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                      top: 14,
                      child: Container(
                        width: 50,
                        height: 30,
                        child: Text(
                          '30%',
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Light orange color
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent, // Medium orange color
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.lightGreen.shade50, width: 2.5)
                        // Medium orange color
                        ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.lightGreen.shade50, width: 2.5)
                        // Darker orange color
                        ),
                  ),
                  // Sneaker image
                  Positioned(
                    top: 10,
                    child: PageView(
                      controller: _controller,
                      children: [
                        ClipOval(
                          child: Image(
                              image: AssetImage('images/1.png'),
                              width: 160,
                              height: 160,
                              fit: BoxFit.cover),
                        ),
                        ClipOval(
                          child: Image(
                              image: AssetImage('images/2.png'),
                              width: 160,
                              height: 160,
                              fit: BoxFit.cover),
                        ),
                        ClipOval(
                          child: Image(
                              image: AssetImage('images/3.png'),
                              width: 160,
                              height: 160,
                              fit: BoxFit.cover),
                        ),
                        ClipOval(
                          child: Image(
                              image: AssetImage('images/4.png'),
                              width: 160,
                              height: 160,
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(controller: _controller, count: 4)
                ],
              ),
            ),
            SmoothPageIndicator(controller: _controller, count: 4),
            Text('test')
          ],
        ),
      ),
    );
  }
}
