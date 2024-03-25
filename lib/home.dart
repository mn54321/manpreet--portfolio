import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homeState();
  }
}

class homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 750,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 3, 137, 248),
                      radius: 103,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('image/mann.jpg'),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 331)),
                            Text(
                              "Hi Welcome To My Portfolio",
                              style: TextStyle(color: Colors.blue),
                            ),
                            Container(
                              height: 20,
                              child: Image(image: AssetImage('image/hand.png')),
                            )
                          ],
                        ),
                        Text(
                          "Manpreet Singh",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 331)),
                            AnimatedTextKit(
                              animatedTexts: [
                                WavyAnimatedText(
                                  "Flutter Developer",
                                  textStyle: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.play_arrow,
                              color: Colors.green,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
