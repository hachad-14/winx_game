// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'secondScreen.dart';

void main() => runApp(MaterialApp(
  title: "HomePage", 
  home: MyApp(),
  debugShowCheckedModeBanner: false,
  )
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 34, 35, 43),
        body: ListView(children: <Widget>[
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              margin: const EdgeInsets.only(top:30.0),
              height: 60,
              width: 380,
              decoration:
              BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
              ),
              child: Center(
                child: Text('Winx b0.1',style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 22),)),
              ),
            ),
          ),
          Align(
            //location//
            alignment: Alignment(0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No Limits", style: GoogleFonts.anton(textStyle: TextStyle(fontSize: 55, color: Color.fromRGBO(255, 255, 255, 1)))),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  enableFeedback: false,
                  onTap: () async {
                    Navigator.push(context,
                       CupertinoPageRoute(builder:(context) => GameScreen()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,    
                    children: [
                       Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Text("> Jouer", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 55, color: Color.fromRGBO(0, 246, 113, 1)))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 180),
                        child: Text("Developpé par Hachad Saad.", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Color.fromRGBO(255, 255, 255, 1)))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}