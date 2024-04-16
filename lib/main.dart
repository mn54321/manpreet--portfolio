import 'dart:async';

import 'package:flutter/material.dart';
import 'package:manpreet_portfolio/drawer.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:manpreet_portfolio/internet_status_checker.dart';
import 'package:manpreet_portfolio/progress.dart';
import 'package:get/get.dart';

void main() {
  Get.put(InternetStatusChecker(), permanent: true);
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Mangeet Creation",
    home: portfolionew(),
  ));
}

class portfolionew extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return portfolionewState();
  }
}

class portfolionewState extends State<portfolionew> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => progress())));
  }

  @override
  Widget build(BuildContext context) {
    progress();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //margin: EdgeInsets.symmetric(vertical: 100, horizontal: 410),
              child: Image.asset(
                'image/sky.png',
                width: 200,
                height: 200,
              ),
            ),
            Container(
              child: JumpingDots(color: Color.fromARGB(255, 42, 42, 43)),
            )
          ],
        ),
      ),
    );
  }
}
