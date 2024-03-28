import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manpreet_portfolio/carsousel_model.dart';
import 'package:manpreet_portfolio/work.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:manpreet_portfolio/home.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

class drawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return drawerState();
  }
}

class drawerState extends State<drawer> {
  FlipCardController _controller = FlipCardController();
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Image.asset(
            'image/fullsky.png',
            height: 50,
            fit: BoxFit.contain,
          )
        ]),
        backgroundColor: Color.fromARGB(255, 253, 253, 254),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 5, 77, 136)),
      ),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 5, 77, 136),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10),
                color: const Color.fromARGB(255, 251, 250, 250),
                child: Column(children: <Widget>[
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 253, 251, 251),
                        image: DecorationImage(
                            image: AssetImage(
                          'image/sky.png',
                        ))),
                  ),
                  Text(
                    "Manpreet Singh",
                    style: TextStyle(
                        color: Color.fromARGB(255, 6, 104, 185),
                        fontWeight: FontWeight.bold),
                  )
                ]),
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                hoverColor: Color.fromARGB(255, 73, 73, 74),
                tileColor: Color.fromARGB(255, 5, 77, 136),
                minVerticalPadding: 10,
                selectedColor: Colors.blue,
                title: Text(
                  "Home",
                  style: TextStyle(color: Color.fromARGB(255, 251, 250, 250)),
                ),
                leading: Icon(
                  Icons.home,
                  size: 20,
                  color: Color.fromARGB(255, 255, 254, 254),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  /*Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => drawer()));*/
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 74, 73, 73),
                height: 20,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                hoverColor: Color.fromARGB(255, 103, 89, 178),
                tileColor: Color.fromARGB(255, 5, 77, 136),
                selectedColor: Colors.blue,
                title: Text(
                  "About Us",
                  style: TextStyle(color: Color.fromARGB(255, 255, 253, 253)),
                ),
                leading: Icon(
                  Icons.info,
                  size: 20,
                  color: Color.fromARGB(255, 255, 254, 254),
                ),
                onTap: null,
              ),
              const Divider(
                color: Color.fromARGB(255, 74, 73, 73),
                height: 20,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                hoverColor: Color.fromARGB(255, 103, 89, 178),
                tileColor: Color.fromARGB(255, 5, 77, 136),
                title: Text(
                  "Services",
                  style: TextStyle(color: Color.fromARGB(255, 252, 251, 251)),
                ),
                leading: Icon(
                  Icons.design_services_sharp,
                  size: 20,
                  color: Color.fromARGB(255, 254, 253, 253),
                ),
                onTap: null,
              ),
              const Divider(
                color: Color.fromARGB(255, 74, 73, 73),
                height: 20,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 40),

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                hoverColor: Color.fromARGB(255, 73, 73, 74),
                selected: true,

                // splashColor: Colors.black87,
                selectedColor: Colors.white,
                tileColor: Color.fromARGB(255, 5, 77, 136),
                title: Text(
                  "Work",
                  style: TextStyle(color: Color.fromARGB(255, 252, 252, 252)),
                ),
                leading: Icon(
                  Icons.work,
                  size: 20,
                  color: Color.fromARGB(255, 255, 254, 254),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => work(),
                      ));
                },
              ),
              const Divider(
                color: Color.fromARGB(255, 74, 73, 73),
                height: 20,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                contentPadding: EdgeInsets.symmetric(horizontal: 40),
                hoverColor: Color.fromARGB(255, 103, 89, 178),
                tileColor: Color.fromARGB(255, 5, 77, 136),
                title: Text(
                  "Contact",
                  style: TextStyle(color: Color.fromARGB(255, 252, 251, 251)),
                ),
                leading: Icon(
                  Icons.design_services_sharp,
                  size: 20,
                  color: Color.fromARGB(255, 254, 253, 253),
                ),
                onTap: null,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _mediaQuery.size.height * 0.9,
              //width: double.infinity,
              color: const Color.fromARGB(255, 5, 77, 136),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 254, 255, 255),
                        radius: 105,
                        child: ClipOval(
                          child: Image.asset(
                            'image/mann.jpg',
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      // Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hi Welcome To My Portfolio",
                            style: TextStyle(
                                color: Color.fromARGB(255, 250, 249, 249),
                                fontFamily: 'FontMain',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 20,
                            child: Image(image: AssetImage('image/hi.gif')),
                          ),
                        ],
                      ),

                      Text(
                        "Manpreet Singh",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 250, 249, 249),
                            fontSize: 36,
                            fontFamily: 'cool'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedTextKit(
                            animatedTexts: [
                              WavyAnimatedText(
                                "Flutter Developer",
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 254, 251, 251)),
                              ),
                              WavyAnimatedText(
                                "UI/UX Graphic Designer",
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              )
                            ],
                            repeatForever: true,
                            isRepeatingAnimation: true,
                          ),
                          Icon(
                            Icons.play_arrow,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black,
                child: Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.symmetric(horizontal: 20),
                      height: _mediaQuery.size.height * 0.9,
                      child: ListTile(
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Text(
                            "About Me",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        subtitle: AutoSizeText(
                          "One of my key strengths lies in his ability to understand and implement complex design patterns and architectures. He possesses a deep understanding of Flutter's widget-based system, enabling him to create visually appealing and functional user interfaces. My attention to detail ensures that his applications not only meet technical requirements but also provide an excellent user experience.In addition to his technical prowess, i am well-versed in the Dart programming language, which is integral to Flutter development. His proficiency in Dart, coupled with a knack for problem-solving, allows him to tackle challenges efficiently and deliver high-quality code. My commitment to staying updated with the latest trends and advancements in Flutter and mobile development showcases his dedication to professional growth. He actively participates in the Flutter community, contributing insights and solutions to common development issues, further establishing himself as a reliable source of knowledge.",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 10),
            Container(
              width: _mediaQuery.size.width,
              height: _mediaQuery.size.height * 0.7,
              color: Colors.brown,
              child: Column(
                children: [
                  Text(
                    'What I can do',
                    style: TextStyle(fontSize: 50),
                  ),
                  Text(
                    'I am not be perfect but surly i am of some use:)',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 20),
                  CarouselSlider(
                      options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlayInterval: Duration(seconds: 5),
                          height: 320.0,
                          autoPlay: true,
                          autoPlayCurve: Curves.decelerate),
                      items: _createCarouselWidgets()),
                ],
              ),
            )
          ],
        ),
        /*  Divider(
              color: Color.fromARGB(255, 74, 73, 73),
              height: 0,
            ),*/
      ),
    );
  }

  final _source = [
    Text('UI/UX Designer'),
    Text('Mobile Development'),
    Text('Blog Writing'),
    Text('Rapid Prototyping'),
  ];

  List<Widget> _createCarouselWidgets() {
    List<Widget> _widgets = [];

    final List<CarouselModel> listOfImages = [
      CarouselModel(
          imagePath: 'image/app.png',
          frontTitle: "UI/UX Designing",
          backTitle: "- Splash Screen"),
      CarouselModel(
          imagePath: 'image/develop.png',
          frontTitle: "Mobile App Development",
          backTitle: "Android app development via Flutter"),
      CarouselModel(
          imagePath: 'image/blog.png',
          frontTitle: "Blog Writing",
          backTitle: "- Firbase Auth/ Cloud"),
      CarouselModel(
          imagePath: 'image/prototyping.png',
          frontTitle: "Rapid Prototyping",
          backTitle: "- Maps integration and more....!"),
    ];

    for (int i = 0; i < listOfImages.length; i++) {
      _widgets.add(Builder(builder: (BuildContext context) {
        final carouselModel = listOfImages[i];
        return FlipCard(
          onTapFlipping: true,
          rotateSide: RotateSide.right,
          controller: _controller,
          frontWidget: Center(
            child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(color: Colors.white, blurRadius: 5, spreadRadius: 2)
                ], color: Colors.pink, borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(carouselModel.imagePath, scale: 7.0),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      carouselModel.frontTitle,
                      style: const TextStyle(fontSize: 17),
                    )
                  ],
                )),
          ),
          backWidget: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(color: Colors.pink, blurRadius: 5, spreadRadius: 2)
              ], color: Colors.yellow, borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      carouselModel.backTitle,
                    ),
                    const Divider(height: 30),
                    Center(
                      child: Container(
                        height: 30,
                        width: 100,
                        child: const FloatingActionButton(
                          shape: BeveledRectangleBorder(),
                          onPressed: null,
                          child: Text("Hire me"),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        );
      }));
    }

    return _widgets;
  }
}
