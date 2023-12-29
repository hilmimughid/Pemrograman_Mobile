import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';
import 'dart:io';

late List<CameraDescription> cameras;
late CameraController controller;
late Future<void> _initializeCamera;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(CameraApp());
}

class CameraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraScreen(),
    );
  }
}

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  void initState() {
    super.initState();
    _initializeCamera = _setupCameras();
  }

  Future<void> _setupCameras() async {
    controller = CameraController(cameras[0], ResolutionPreset.max);
    await controller.initialize();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Future<void> _takePicture() async {
    if (!controller.value.isInitialized) {
      print('Error: select a camera first.');
      return;
    }
    if (controller.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return;
    }

    try {
      // Commented out the line that saves the picture
      // XFile file = await controller.takePicture();
    } on CameraException catch (e) {
      print('Error: ${e.description}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _initializeCamera,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: <Widget>[
                CameraPreview(controller),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () async {
                          await _takePicture();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.white, // background color
                        ),
                        child: Icon(Icons.camera,
                            size: 20.0,
                            color:
                                Colors.black), // your preferred icon and size
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
