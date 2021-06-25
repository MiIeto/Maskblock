import 'package:flutter/material.dart';
import 'package:maskblock/src/pages/apoderado/last_page.dart';
import 'package:maskblock/src/pages/apoderado/notif_page.dart';
import 'package:maskblock/src/pages/apoderado/qr_page.dart';

import '../login_page.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final htxt = new TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final btntxt = new TextStyle(fontSize: 16);
  final btnStyle = new ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xff63caf2)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E0D5),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: "Info",
              onPressed: () {
                print("Más informacion del ministerio");
                /*Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginWidget()),
                );*/
              },
              child: Icon(
                Icons.info_outline_rounded,
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            FloatingActionButton(
              heroTag: "LogOut",
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginWidget()),
                );
              },
              child: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                children: [
                  Text('¡Bienvenido', style: htxt),
                  Text('Usuario!', style: htxt),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.1,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotiWidget()),
                    );
                  },
                  icon: Icon(Icons.notifications),
                  label: Text('Notificaciones', style: btntxt),
                  style: btnStyle),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.1,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LastWidget()),
                    );
                  },
                  icon: Icon(Icons.lock),
                  label: Text('Último desbloqueo', style: btntxt),
                  style: btnStyle),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.1,
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QrWidget()),
                    );
                  },
                  icon: Icon(Icons.qr_code),
                  label: Text('Código de desinstalación', style: btntxt),
                  style: btnStyle),
            ),
          ],
        ),
      ),
    );
  }
}
