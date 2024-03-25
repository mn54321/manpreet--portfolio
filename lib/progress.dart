import 'dart:async';

import 'package:flutter/material.dart';
import 'package:manpreet_portfolio/drawer.dart';

class progress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return progressState();
  }
}

class progressState extends State<progress> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => drawer())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      ),
    );
  }
}
