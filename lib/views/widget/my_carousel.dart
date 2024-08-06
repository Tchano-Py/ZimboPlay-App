import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/image/image-0.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/image/image-1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/image/image-2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/image/image-3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/image/image-4.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 99.0,
            height: 99.0,
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/image/image-5.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
