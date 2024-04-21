import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:manpreet_portfolio/carsousel_model.dart';
import 'package:manpreet_portfolio/work.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:manpreet_portfolio/home.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:custom_alert_dialog_box/custom_alert_dialog_box.dart';
import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shadow_overlay/shadow_overlay.dart';
import 'package:manpreet_portfolio/wifi.dart';

class drawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return drawerState();
  }
}

class drawerState extends State<drawer> {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isalertset = false;

  @override
  void initState() {
    getconnectivity();
    super.initState();
  }

  getconnectivity() => subscription = Connectivity()
          .onConnectivityChanged
          .listen((List<ConnectivityResult> result) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;
        if (!isDeviceConnected && isalertset == false) {
          showDialogBox();
          setState(() {
            isalertset = true;
          });
        }
      });
  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  void whatsapplaunch({@required number}) async {
    String url = "whatsapp://send?phone=$number";
    await launchUrl(Uri.parse(url)).onError(
      (error, stackTrace) {
        print("Url is not valid");
        return false;
      },
    );
  }

  var key1 = GlobalKey();
  var key2 = GlobalKey();
  var key3 = GlobalKey();
  var key4 = GlobalKey();
  var key5 = GlobalKey();

  FlipCardController _controller = FlipCardController();
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
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
                padding: EdgeInsets.symmetric(vertical: 30),
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
                  Scrollable.ensureVisible(key1.currentContext!,
                      duration: Duration(milliseconds: 1000));
                  Navigator.pop(context);
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
                onTap: () {
                  Scrollable.ensureVisible(key2.currentContext!,
                      duration: Duration(milliseconds: 1000));
                  Navigator.pop(context);
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
                  "Services",
                  style: TextStyle(color: Color.fromARGB(255, 252, 251, 251)),
                ),
                leading: Icon(
                  Icons.design_services_sharp,
                  size: 20,
                  color: Color.fromARGB(255, 254, 253, 253),
                ),
                onTap: () {
                  Scrollable.ensureVisible(key3.currentContext!,
                      duration: Duration(milliseconds: 1000));
                  Navigator.pop(context);
                },
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
                  Scrollable.ensureVisible(key5.currentContext!,
                      duration: Duration(milliseconds: 1000));

                  Navigator.pop(context);
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
                onTap: () {
                  Scrollable.ensureVisible(key4.currentContext!,
                      duration: Duration(milliseconds: 1000));
                  Navigator.pop(context);
                },
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              key: key1,
              //height: _mediaQuery.size.height,
              //   width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //
                  // Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hi Welcome To My Portfolio",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'simp',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 35,
                          child: Image(image: AssetImage('image/hi.gif')),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Manpreet\nSingh",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 45,
                          fontFamily: 'ro'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText(
                              "Flutter Developer",
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                            WavyAnimatedText(
                              "UI/UX Graphic Designer",
                              textStyle:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            )
                          ],
                          repeatForever: true,
                          isRepeatingAnimation: true,
                        ),
                        Icon(
                          Icons.play_arrow,
                          color: Colors.green,
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  /* CircleAvatar(
                        backgroundColor: Colors.blue,
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
                      ),*/
                  Positioned(
                    bottom: 0.0,
                    right: -60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: _mediaQuery.size.width,
                              child: ShadowOverlay(
                                shadowWidth: 400,
                                shadowHeight: 150,
                                child: Image.asset(
                                  alignment: Alignment.bottomRight,
                                  height: 380,
                                  width: 400,
                                  'image/scool.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                key: key2,
                padding: EdgeInsets.symmetric(vertical: 50),
                width: double.infinity,
                //  height: _mediaQuery.size.height,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                        // padding: EdgeInsets.symmetric(horizontal: 20),

                        child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "About Me",
                          style: TextStyle(
                              fontSize: 45,
                              color: Colors.blue,
                              fontFamily: 'robo'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      subtitle: Column(
                        children: [
                          Text(
                            'I am Manpreet Singh, a Flutter developer,Graphic Designer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                fontFamily: 'simp'),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          AutoSizeText(
                            "One of my key strengths lies in his ability to understand and implement complex design patterns and architectures. He possesses a deep understanding of Flutter's widget-based system, enabling him to create visually appealing and functional user interfaces. My attention to detail ensures that his applications not only meet technical requirements but also provide an excellent user experience.In addition to his technical prowess, i am well-versed in the Dart programming language, which is integral to Flutter development. His proficiency in Dart, coupled with a knack for problem-solving, allows him to tackle challenges efficiently and deliver high-quality code. My commitment to staying updated with the latest trends and advancements in Flutter and mobile development showcases his dedication to professional growth. He actively participates in the Flutter community, contributing insights and solutions to common development issues, further establishing himself as a reliable source of knowledge.",
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontFamily: 'simp'),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    )),
                    Divider(
                      height: 40,
                      color: Colors.black,
                    ),
                    Text(
                      'Tecnologies I have worked with:',
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'simp',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Flutter',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.play_arrow,
                          color: Colors.blue,
                        ),
                        Text(
                          'Dart',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Icon(
                          Icons.play_arrow,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    Divider(
                      height: 40,
                      color: Colors.black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Name:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          '   Manpreet Singh',
                          style: TextStyle(fontFamily: 'robo', fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Email:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          '   manpreet420007@gmail.com',
                          style: TextStyle(fontFamily: 'robo', fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 45,
                      width: 110,
                      child: OutlinedButton(
                        style: ButtonStyle(
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.blue)),
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.white,
                          ),
                          overlayColor: MaterialStatePropertyAll(
                              Colors.blue.withOpacity(0.10)),
                        ),
                        onPressed: () {
                          EasyLauncher.url(
                              url:
                                  "https://drive.google.com/file/d/1rOREg435oQQYclTVGB7H6Tw0LLlekCGq/view?usp=drive_link");
                        },
                        child: Text(
                          'Resume',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              key: key3,
              width: _mediaQuery.size.width,
              // height: _mediaQuery.size.height,
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'What I can do',
                    style: TextStyle(
                        fontSize: 45, color: Colors.blue, fontFamily: 'robo'),
                  ),
                  Text(
                    'I am not be perfect but surly i am of some use:)',
                    style: TextStyle(fontSize: 12, fontFamily: 'simp'),
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
            ),
            Container(
              key: key5,
              width: _mediaQuery.size.width,
              // height: _mediaQuery.size.height,
              color: Colors.white,
              child: Column(children: [
                Text(
                  "Portfolio",
                  style: TextStyle(
                      fontSize: 45, color: Colors.blue, fontFamily: 'robo'),
                ),
                Text(
                  "Here are few samples of my work :)",
                  style: TextStyle(fontFamily: 'simp'),
                ),
                SizedBox(height: 30),
                CarouselSlider(
                    items: _portfolio.map((e) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          width: _mediaQuery.size.width,
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue,
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            e,
                            scale: 8.0,
                          ),
                        );
                      });
                    }).toList(),
                    options: CarouselOptions(
                        height: 290,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        autoPlayCurve: Curves.linear))
              ]),
            ),
            Container(
              key: key4,
              color: Colors.white,
              width: _mediaQuery.size.width,
              //height: _mediaQuery.size.height,
              child: Column(children: [
                Text(
                  'Get in Touch',
                  style: TextStyle(
                      fontSize: 45, color: Colors.blue, fontFamily: 'robo'),
                ),
                Text(
                  'Lets build together:)',
                  style: TextStyle(fontFamily: 'simp'),
                ),
                SizedBox(height: 30),
                CarouselSlider(
                    items: _source.map((i) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                            width: _mediaQuery.size.width,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue,
                                    spreadRadius: 2,
                                    blurRadius: 5)
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    i,
                                    scale: 7.0,
                                  ),
                                  SizedBox(height: 8),
                                  if (i == 'image/home.png')
                                    ListTile(
                                      title: Text(
                                        "Location",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text(
                                        "Luton United Kingdom",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'simp',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  if (i == 'image/telephone.png')
                                    ListTile(
                                      title: Text(
                                        "Phone",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "(+44) 7767945663",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'simp',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  if (i == 'image/mail.png')
                                    ListTile(
                                      title: Text(
                                        "Email",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "manpreet420007@gmail.com",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'simp',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                ]));
                      });
                    }).toList(),
                    options: CarouselOptions(
                        height: 290.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayCurve: Curves.linear)),
                SizedBox(height: 100),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Flutter Developed with love",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'simp',
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 25,
                      child: Image.asset(
                        'image/like.gif',
                        scale: 9.0,
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ],
        ),
        /*  Divider(
                color: Color.fromARGB(255, 74, 73, 73),
                height: 0,
              ),*/
      ),
    );
  }

  List _portfolio = [
    'image/android.png',
    'image/android.png',
    'image/android.png'
  ];

  final _source = ['image/home.png', 'image/telephone.png', 'image/mail.png'];

  List<Widget> _createCarouselWidgets() {
    List<Widget> _widgets = [];

    final List<CarouselModel> listOfImages = [
      CarouselModel(
        imagePath: 'image/app.png',
        frontTitle: "UI/UX Designing",
        backTitle:
            "Modern UI/UX Designing\n - Adobe XD\n - Mobile App Design\n - Interactive UI designs\n - Responsiveness",
      ),
      CarouselModel(
          imagePath: 'image/develop.png',
          frontTitle: "Mobile App Development",
          backTitle:
              "Android app development via Flutter\n - Splash Screen\n - Firebase Auth/Cloud"),
      CarouselModel(
          imagePath: 'image/blog.png',
          frontTitle: "Blog Writing",
          backTitle:
              "Technical Blog Writing\n - Medium blogs\n - soothing heading images\n - Researched topics and more...!"),
      CarouselModel(
          imagePath: 'image/prototyping.png',
          frontTitle: "Rapid Prototyping",
          backTitle:
              "Rapid Prototype via Flutter\n - working MVP\n - Quick & Working Prototype"),
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
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.blue, blurRadius: 5, spreadRadius: 2)
                    ],
                    color: const Color.fromARGB(255, 252, 251, 251),
                    borderRadius: BorderRadius.circular(30)),
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
                BoxShadow(color: Colors.blue, blurRadius: 5, spreadRadius: 2)
              ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
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
                        child: FloatingActionButton(
                          backgroundColor: Colors.blue,
                          shape: BeveledRectangleBorder(),
                          onPressed: _showdialog,
                          child: Text(
                            "Hire me !",
                            style: TextStyle(color: Colors.white),
                          ),
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

  void _showdialog() {
    showAdaptiveDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text("Hire Me!"),
            actions: [
              Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            whatsapplaunch(number: "+918427928057");
                          },
                          child: Text(
                            "Whatsapp",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 7, 188, 79)))),
                      SizedBox(height: 10),
                      ElevatedButton(
                          onPressed: () async {
                            await EasyLauncher.email(
                                email: "manpreetbains3344@gmail.com");
                          },
                          child: Text(
                            "Email",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 254, 254)),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color.fromARGB(255, 250, 22, 6)))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Back',
                                style: TextStyle(color: Colors.blue),
                              )),
                        ],
                      )
                    ],
                  ))
            ],
          );
        });
  }

  showDialogBox() => showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
            title: Text("No Connection"),
            content: Text("Plz check your internet connectivity"),
            actions: <Widget>[
              TextButton(
                  onPressed: () async {
                    Navigator.pop(context);
                    setState(() {
                      isalertset = false;
                    });

                    isDeviceConnected =
                        await InternetConnectionChecker().hasConnection;
                    if (!isDeviceConnected) {
                      showDialogBox();
                      setState(() {
                        isalertset = true;
                      });
                    }
                  },
                  child: Text('ok'))
            ],
          ));
}
