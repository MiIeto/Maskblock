import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maskblock/src/pages/alumno/recog_page.dart';

import 'package:maskblock/src/pages/login_page.dart';


List <CameraDescription> camera;


Future <void> main() async{
                      
  WidgetsFlutterBinding.ensureInitialized();

  camera = await availableCameras();

  runApp(RecWidget());

  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: Center(child: LoginWidget()),
      debugShowCheckedModeBanner: false
    );
  }
}