import 'package:flutter/material.dart';
import '2nd_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: new ThemeData(
      primaryColor: Colors.black,
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool user=true;
  bool pass=true;

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(25.0),
        child: ListView(
          children: <Widget>[
            Divider(
              color: Colors.transparent,
              height: 60.0,
            ),
//logo
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterLogo(
                    size: 120.0,
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 10.0,
                  ),
                  Text('"About Company"')
                ],
              ),
            ),

            Divider(
              color: Colors.transparent,
              height: 50.0,
            ),

//username
            TextFormField(
              controller: username,
              style: new TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
              autocorrect: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                ),
                labelText: "User name :",
                errorText: user==false?"Field empty":"",
                labelStyle: new TextStyle(
                  color: Colors.black,
                  fontSize: 19.0,
                ),
              ),
            ),

            Divider(
              color: Colors.transparent,
              height: 10.0,
            ),

//password
            TextFormField(
              obscureText: true,
              controller: password,
              style: new TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
              autocorrect: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                ),
                labelText: "Password :",
                errorText: pass==false?"Field empty":"",
                labelStyle: new TextStyle(
                  color: Colors.black,
                  fontSize: 19.0,
                ),
              ),
            ),

            Divider(
              color: Colors.transparent,
              height: 30.0,
            ),

//Login Button

            Padding(
              padding: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                padding: EdgeInsets.fromLTRB(45.0, 12.0, 45.0, 12.0),
                child: new Text('Login',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    )),
                elevation: 4.0,
                color: Colors.black,
                splashColor: Colors.red,
                onPressed: () {
                 if(username.text.isEmpty || password.text.isEmpty)
                 {

                   if(username.text.isEmpty)
                   {
                     setState(() {
                      user=false; 
                     });
                   }else if(password.text.isEmpty)
                   {
                    setState(() {
                      pass=false; 
                    });
                   }
                  
                 }else{
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Next()));
              
                 }
                },
              ),
            ),

            Divider(
              color: Colors.transparent,
              height: 50.0,
            ),

//About

            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("This is a copyright App !!"),
                  Divider(color: Colors.transparent,height: 5.0,),
                  Text("This is a dummy login page for application !!"),
                  Divider(color: Colors.transparent,height: 5.0,),
                  Text("Good Day !!")
                  ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
