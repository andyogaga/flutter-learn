import 'package:flutter/material.dart';
import 'package:myapp/utils/constants.dart';
import 'package:myapp/widgets/CustomText.dart';
import 'package:myapp/widgets/PaintedCircle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: OnboardingScreen(),
      ),
    );
  }
}

var featureList = [
  {
    'title': 'Feature 1',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'lajldsjlfds'
  },
  {
    'title': 'Feature 2',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'lajldsjlfds'
  },
  {
    'title': 'Feature 3',
    'description':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    'image': 'lajldsjlfds'
  },
];

class OnboardingScreen extends StatefulWidget {
  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  int _featureIndex = 0;

  void _setPosition(int position) {
    setState(() {
      _featureIndex = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: screenSize(context).height * 0.5,
            width: screenSize(context).width,
            color: Colors.black12,
            child: Icon(
              Icons.image,
              color: Colors.black12,
              size: 150,
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      CustomText(
                        featureList[_featureIndex]['title'],
                        fontSize: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        child: CustomText(
                          featureList[_featureIndex]['description'],
                          fontSize: 16,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: featureList.asMap().entries.map((feature) {
                            return Circle(
                                filled: feature.key == _featureIndex,
                                setPosition: () {
                                  _setPosition(feature.key);
                                });
                          }).toList(),
                        ),
                      ),
                      OutlineButton(
                        child: CustomText(
                          _featureIndex == featureList.length - 1
                              ? 'CONTINUE'
                              : 'SKIP INTRO',
                          fontWeight: FontWeight.bold,
                        ),
                        onPressed: null,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(25)),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                )),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.start,
      ),
      color: Colors.white,
    );
  }
}
