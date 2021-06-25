// ignore: import_of_legacy_library_into_null_safe
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

import '../../../main.dart';

class RecWidget extends StatefulWidget {
  @override
  _RecWidgetState createState() => _RecWidgetState();
}

class _RecWidgetState extends State<RecWidget> {
  //Definicion de instancias
  CameraImage cameraImage;
  CameraController cameraController;
  //Definicion de variables
  bool isWorking = false;
  String result = '';

  initCamera(){
    cameraController = CameraController(camera[0], ResolutionPreset.medium);
    cameraController.initialize().then((value){
      if(!mounted){
        return;
      }
      setState(() {
        cameraController.startImageStream((imageFromStream){
          if(!isWorking){
            isWorking = true;
            cameraImage = imageFromStream;
            runModelOnFrame();
          }
        });
      });
    });
  }

  runModelOnFrame() async {
    if (cameraImage != null){
      var recognitions = await Tflite.runModelOnFrame(
      bytesList: cameraImage.planes.map((plane) {
        return plane.bytes;
      }).toList(),
      imageHeight: cameraImage.height,
      imageWidth: cameraImage.width,
      imageMean: 127.5,
      imageStd: 127.5,
      rotation: 90,
      numResults: 1,
      threshold: 0.1,
      asynch: true,
      );

      result = '';

      recognitions.forEach((response) { 
        result += response["label"] + "\n";
      });

      setState((){
        //result;
      });

      isWorking = false;
    }
  }

  loadModel() async {
    await Tflite.loadModel(model: "assets/model.tflite",
    labels: "assets/labels.txt");
  }

  @override
  void initState() {
    super.initState();
    initCamera();
    loadModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: result.isEmpty ? Text('Enfoque el rostro'):
        Padding(padding: EdgeInsets.only(top: 30),
          child: Text(result,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: (!cameraController.value.isInitialized) ? Container(): 
        Align(
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: cameraController.value.aspectRatio,
            child: CameraPreview(cameraController),
          )
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
