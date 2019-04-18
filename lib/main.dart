import 'package:camulator/calculatorScreen.dart';
import 'package:camulator/cameraScreen.dart';
import 'package:flutter/material.dart';

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

  @override
  void initState() {
    super.initState();

    camera = CameraScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: switchScreen ? camera : CalculatorScreen(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            switchScreen = !switchScreen;
          });
        },
        child: Icon(Icons.compare_arrows),
      ),
    );
  }
}
