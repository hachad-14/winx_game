// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TruthOrDare extends StatefulWidget {
  @override
  StartGame createState() => StartGame();
}

class Spacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,              
        children: [
          Container(
            width: 340,
            height: 1,
            decoration:
            BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
            ),
          ),
        ],
      ),
    );
  }
}

class StartGame extends State<TruthOrDare> {
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
            alignment: Alignment(0,0),
            child: Container(
              margin: const EdgeInsets.only(top: 30),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Text("Action ou vérité 🔥", style: GoogleFonts.robotoCondensed(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ,color: Color.fromRGBO(255, 255, 255, 1)))),
                  Padding(padding: EdgeInsets.only(top: 10), child:Spacer()),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,0),
            child: Container(
              margin: const EdgeInsets.only(top: 40),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Text("Nom", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ,color: Color.fromRGBO(255, 255, 255, 1)))),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      width: 340,
                      height: 250,
                      decoration:
                      BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,              
                        children: [ 
                          Text("<Une Action>", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 0, 0, 0)))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,0),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      width: 340,
                      height: 60,
                      decoration:
                      BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,              
                        children: [ 
                          Text("Suivant", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 0, 0, 0)))),
                        ],
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