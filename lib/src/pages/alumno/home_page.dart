import 'package:flutter/material.dart';
import 'package:maskblock/src/pages/alumno/recog_page.dart';
import 'package:maskblock/src/pages/alumno/uninstall_page.dart';
import 'package:maskblock/src/pages/login_page.dart';


class HomeAWidget extends StatefulWidget {
  @override
  _HomeAWidgetState createState() => _HomeAWidgetState();
}

class _HomeAWidgetState extends State<HomeAWidget> {

  final htxt = new TextStyle( fontSize: 30);
  final btntxt = new TextStyle( fontSize: 20);
  final pdgbtn = new EdgeInsets.fromLTRB(0, 0, 0, 0);
  final btnStyle = new ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.cyan[200]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E0D5),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.logout,
            color: Colors.black,
            
            ), 
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginWidget()),
            );
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('Bienvenido Usuario!', style: htxt),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.1,
              child: ElevatedButton.icon(
                onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RecWidget()),
                    );
                }, 
                icon: Icon(Icons.face),
                label: Text('Reconocimiento facial', style: btntxt), 
                style: btnStyle
                ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.1,
              child: ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DelWidget()),
                    );
                },
                icon: Icon(Icons.delete_forever_outlined), 
                label: Text('Desinstalar app', style: btntxt), 
                style: btnStyle),
            )
          ],
        ),
      ),
    );
  }
}
