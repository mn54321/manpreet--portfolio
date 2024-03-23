import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class work extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CarouselSlider(
          options: CarouselOptions(
            height: 300,
          ),
          items: _source.map((e) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(color: e),
                );
              },
            );
          }).toList()),
    ));
  }

  final List _source = [Colors.red, Colors.blue, Colors.black, Colors.yellow];
}
