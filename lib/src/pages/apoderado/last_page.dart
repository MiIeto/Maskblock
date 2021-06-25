import 'package:flutter/material.dart';

import 'package:maskblock/src/pages/apoderado/home_page.dart';


class LastWidget extends StatefulWidget {
  @override
  _LastWidgetState createState() => _LastWidgetState();
}

class _LastWidgetState extends State<LastWidget> {

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      children: [
                        Text("El celular de su pupilo", style: TextStyle(fontSize:  40)),
                        Text("fue desbloqueado con", style: TextStyle(fontSize:  40)),
                        Text("la siguiente imagen:", style: TextStyle(fontSize:  40)),
                      ],
                    ),
                  ),
                ),
            ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Image(
                    image: AssetImage('assets/img/mascarilla-buena.jpg'),
                  )
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Column(
                    children: [
                      Text("Esto se realizó a las", style: TextStyle(fontSize:  20)),
                      Text("13:24", style: TextStyle(fontSize:  25, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
