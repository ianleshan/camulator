import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

class CameraScreen extends StatefulWidget {
  _CameraScreenState state;
  @override
  _CameraScreenState createState() {
    state = _CameraScreenState();
    return state;
  }
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController cameraController;

  @override
  void initState() {
    super.initState();
    initializeCameras();
  }

  void initializeCameras() async {
    cameras = await availableCameras();
    cameraController = CameraController(cameras[1], ResolutionPreset.high);
    cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (cameraController == null) {
      return Container(
        color: Colors.pink,
      );
    }
    return AspectRatio(
        aspectRatio: cameraController.value.aspectRatio,
        child: CameraPreview(cameraController));
  }
}
