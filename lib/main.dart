import 'dart:io';

import 'package:camulator/calculatorScreen.dart';
import 'package:camulator/cameraScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

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

  String imagePath = "";
  void onTakePictureButtonPressed() {
    takePicture().then((String filePath) {
      if (mounted) {
        setState(() {
          imagePath = filePath;
        });
        if (filePath != null) print('Picture saved to $filePath');
      }
    });
  }

  String timestamp() => DateTime.now().millisecondsSinceEpoch.toString();
  Future<String> takePicture() async {
    if (!camera.state.cameraController.value.isInitialized) {
      print('Error: select a camera first.');
      return null;
    }
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Pictures/flutter_test';
    await Directory(dirPath).create(recursive: true);
    final String filePath = '$dirPath/${timestamp()}.jpg';

    if (camera.state.cameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    await camera.state.cameraController.takePicture(filePath);
    return filePath;
  }
}
