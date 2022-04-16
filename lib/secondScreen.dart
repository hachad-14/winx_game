// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison
import 'dart:math';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class GameScreen extends StatefulWidget {
  @override
  StartGame createState() => StartGame();
}

class StartGame extends State<GameScreen> {
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
              margin: const EdgeInsets.only(top:30),
              height: 60,
              width: 380,
              decoration:
              BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 120, left: 80),
                    child: Text("Winx b0.1", style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 20, color: Colors.black))),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Padding(
                       padding: EdgeInsets.only(top: 20),
                       child: Text("No Limits", style: GoogleFonts.anton(textStyle: TextStyle(fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1)))),
                  ),
                  Padding(
                     padding: EdgeInsets.only(top: 20),
                     child: Text("Choisissez un mode de jeu", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1)))),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child:Container(
                      width: 380,
                      height: 1,
                      decoration:
                      BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                      ),
                    ),
                  ),
                  Padding(
                       padding: EdgeInsets.only(top: 20),
                       child: Text("Action ou vérité", style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1)))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,              
                      children: [
                        Text("🔥", style: TextStyle(fontSize: 60)),
                        Padding(
                          padding: EdgeInsets.only(top: 0, left: 50),
                          child: Text("De vrais actions ainsi que des\nvéritées chaud lapins !", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15, color: Color.fromRGBO(255, 255, 255, 1)))),
                        ),
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child:Container(
                      width: 380,
                      height: 1,
                      decoration:
                      BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}