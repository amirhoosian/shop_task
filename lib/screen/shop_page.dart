import 'package:flutter/material.dart';
import 'package:shop_task/screen/cartpage.dart';
import 'package:shop_task/screen/pages/page1.dart';
import 'package:shop_task/screen/pages/page2.dart';
import 'package:shop_task/screen/pages/page3.dart';
import 'package:shop_task/screen/pages/page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopPage extends StatelessWidget {
  ShopPage({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
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
                  ClipRect(
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // Light orange color
                      ),
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
                  Positioned(
                      top: 14,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10)),
                        width: 50,
                        height: 30,
                        child: Center(
                          child: Text(
                            '30%',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: PageView(
                      controller: _controller,
                      children: [OnePage(), TowPage(), TreePage(), FourPage()],
                    ),
                  )
                  // Sneaker image
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(spacing: 12),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 386,
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: double.infinity),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Nike Air Max 200',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 32,
                              ),
                              SizedBox(width: 5),
                              Text('(4.5)')
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 16),
                        child: Text(
                          'Built for notual motion, the Nike Flex shes',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Size:'),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue.shade300,
                              ),
                              onPressed: () {},
                              child: Text('US6')),
                          TextButton(onPressed: () {}, child: Text('US7')),
                          TextButton(onPressed: () {}, child: Text('US8')),
                          TextButton(onPressed: () {}, child: Text('US9'))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Available Color: '),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.yellow),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.pink),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                          )
                        ],
                      ),
                      SizedBox(height: 90),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: double.infinity,
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '269.00',
                              style: TextStyle(fontSize: 37),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Rounded corners
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MyCartPage()));
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.add_shopping_cart,
                                      color: Colors.blue), // Icon and its color
                                  SizedBox(
                                      width: 8), // Space between icon and text
                                  Text(
                                    'Add to Cart',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
