import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';

// ignore: unused_import
import 'package:maskblock/src/pages/alumno/home_page.dart';

// ignore: unused_import
import 'apoderado/home_page.dart';



class LoginWidget extends StatefulWidget {

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final btnStyle = new ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xff63caf2)));
 
  bool _rememberLoginValue = false;

  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  //final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2E0D5),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('MaskBlock', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                    height: 80,
                    width: 80,
                    child: Image(
                      image: AssetImage('assets/img/descarga.jpg'),
                      fit: BoxFit.fitHeight,
                      )
                    )
                ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text('Correo')
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff646464),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5)
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text('Contraseña')
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff646464),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                            ),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 5)
                        ),
                      ),
                    ),
                  )
                ]
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.09,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeAWidget()),
                    );
                  },
                  child: Text('Iniciar Sesión'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xff63caf2)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      ))
                  ),
                )
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SwitchListTile(
                    dense: true,
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.fromLTRB(70, 0, 0, 0),
                    title: Text('Mantener sesión iniciada', textAlign: TextAlign.start),
                    value: _rememberLoginValue, 
                    onChanged: (newValue) => setState(() => _rememberLoginValue = newValue),
                  ),
                  TextButton(
                    onPressed: (){}, 
                    child: Text('¿Olvidó su contraseña?'),
                    style: TextButton.styleFrom(primary: Colors.black45)
                  )
                ]
              )
            ]
          ),
        )
        )
    );
  }
}

void _procesoLogin() async {
  
}