import 'package:flutter/material.dart';
import 'package:shop_task/model/size_model.dart';
import 'package:shop_task/screen/cartpage.dart';
import 'package:shop_task/screen/pages/page1.dart';
import 'package:shop_task/screen/pages/page2.dart';
import 'package:shop_task/screen/pages/page3.dart';
import 'package:shop_task/screen/pages/page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShopPage extends StatelessWidget {
  final List<SizeModel> sizeData = SizeModel.getSize();

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
            // SizedBox(width: double.infinity),
            imageshow(controller: _controller),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(spacing: 12),
            ),
            SizedBox(
              height: 45,
            ),
            itemopthion(sizeData: sizeData)
          ],
        ),
      ),
    );
  }
}

class imageshow extends StatelessWidget {
  const imageshow({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
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
              border: Border.all(color: Colors.lightGreen.shade50, width: 2.5)
              // Medium orange color
              ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.lightGreen.shade50, width: 2.5)
              // Darker orange color
              ),
        ),

        Positioned(
            top: 19,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              width: 50,
              height: 30,
              child: Text(
                '30%',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )),
        Container(
          width: 150,
          height: 150,
          child: PageView(
            controller: _controller,
            children: [OnePage(), TowPage(), TreePage(), FourPage()],
          ),
        )
        // Sneaker image
      ],
    );
  }
}

class itemopthion extends StatefulWidget {
  const itemopthion({
    super.key,
    required this.sizeData,
  });

  final List<SizeModel> sizeData;

  @override
  State<itemopthion> createState() => _itemopthionState();
}

class _itemopthionState extends State<itemopthion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: 370,
      decoration: BoxDecoration(
          color: Colors.pink[100], borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(width: double.infinity),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Nike Air Max 200',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Size:'),
              ),
              SizedBox(width: 30),
              Container(
                height: 25,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          for (var item in widget.sizeData) {
                            item.isSelected = false;
                          }
                          widget.sizeData[index].isSelected = true;
                          setState(() {});
                        },
                        child: Container(
                          width: 40,
                          height: 10,
                          child: Text(
                            widget.sizeData[index].size!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: widget.sizeData[index].isSelected!
                                    ? Colors.black
                                    : Colors.white),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: widget.sizeData[index].isSelected!
                                ? Colors.white
                                : Colors.blue,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 25),
                    itemCount: widget.sizeData.length),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Available Color: '),
              Container(
                width: 25,
                height: 25,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),
              ),
              Container(
                width: 25,
                height: 25,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              ),
              Container(
                width: 25,
                height: 25,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
              ),
              Container(
                width: 25,
                height: 25,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              )
            ],
          ),
          SizedBox(height: 80),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), // Rounded corners
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyCartPage()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add_shopping_cart,
                          color: Colors.blue), // Icon and its color
                      SizedBox(width: 5), // Space between icon and text
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
    );
  }
}
