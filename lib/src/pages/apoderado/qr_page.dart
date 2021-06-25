import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:maskblock/src/pages/apoderado/home_page.dart';

class QrWidget extends StatefulWidget {
  @override
  _QrWidgetState createState() => _QrWidgetState();
}

class _QrWidgetState extends State<QrWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E0D5),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeWidget()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
            size: 30.0,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    children: [
                      Text("Escanee este código con",
                        style: TextStyle(fontSize: 50),
                      ),
                      Text("el celular de su pupilo",
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
              ),
              QrImage(
                data: "Unlock Code",
                version:  QrVersions.auto,
                size: 250.0,
                backgroundColor: Colors.white,
              ),
            ],
          ),
        )
    );
  }
}
