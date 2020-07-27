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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 6;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
                        'Feature 1',
                        fontSize: 24,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        child: CustomText(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          fontSize: 16,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Circle(),
                            Circle(),
                            Circle(),
                          ],
                        ),
                      ),
                      OutlineButton(
                        child: CustomText(
                          'SKIP INTRO',
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
