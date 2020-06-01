import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('images/mainIcon.png'),
              ),
              Text(
                'Learnify',
                style: TextStyle(
                  fontFamily: 'Bad_Script',
                  fontSize: 37.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
//              Text(
//                'Photographer',
//                style: TextStyle(
//                  fontFamily: 'Chelsea_Market',
//                  color: Colors.teal.shade50,
//                  fontSize: 18.0,
//                  letterSpacing: 2.1,
//                ),
//              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.teal.shade800,
                    ),
                    title: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Chelsea_Market',
                        fontSize: 19.0,
                        letterSpacing: 2.2,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 35.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.person_add,
                      color: Colors.teal.shade800,
                    ),
                    title: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Chelsea_Market',
                        fontSize: 19.0,
                        letterSpacing: 2.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
