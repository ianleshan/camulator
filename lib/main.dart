import 'package:camulator/calculatorScreen.dart';
import 'package:camulator/cameraScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camulator',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Camulator'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchScreen = true;
  CameraScreen camera;
  CalculatorScreen calculator;

  @override
  void initState() {
    super.initState();

    getScreenPrefs();

    camera = CameraScreen();
    calculator = CalculatorScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Stack(
        children: <Widget>[
          camera,
          switchScreen ? Container() : calculator,
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          setState(() {
            switchScreen = !switchScreen;
          });
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setBool('screen', switchScreen);
        },
        child: Icon(Icons.compare_arrows),
      ),
    );
  }

  void getScreenPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      switchScreen = (prefs.getBool('screen') ?? true);
    });
  }
}
