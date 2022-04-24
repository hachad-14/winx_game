// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:google_fonts/google_fonts.dart';

import '../api/players.dart';
import '../api/acQuestions.dart';

class SansLimites extends StatefulWidget {
  const SansLimites({Key? key}) : super(key: key);

  @override
  StartGame createState() => StartGame();
}

class Spacer extends StatelessWidget {
  const Spacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,              
      children: [
        Container(
          width: 340,
          height: 1,
          decoration:
          BoxDecoration(color: Color.fromRGBO(169, 12, 19, 1), borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
          ),
        ),
      ],
    );
  }
}

class StartGame extends State<SansLimites> {
  String randomPlayer = playersList[Random().nextInt(playersList.length)];
  String randomQuestion = questionsList[Random().nextInt(questionsList.length)];
   changeText() {
    setState(() {
     randomPlayer = playersList[Random().nextInt(playersList.length)]; 
     randomQuestion = questionsList[Random().nextInt(questionsList.length)];
    });
  }
 

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
              BoxDecoration(color: Color.fromRGBO(169, 12, 19, 1), borderRadius: BorderRadius.circular(20),
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
                    child: Text("Winx b0.5", style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 20, color: Colors.black))),
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
                  Text("Sans Limites ❌", style: GoogleFonts.robotoCondensed(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ,color: Color.fromRGBO(255, 255, 255, 1)))),
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
                  Text(randomPlayer, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ,color: Color.fromRGBO(255, 255, 255, 1)))),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      width: 340,
                      height: 250,
                      decoration:
                      BoxDecoration(color: Color.fromRGBO(169, 12, 19, 1), borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,              
                        children: [ 
                          Padding(
                            padding: EdgeInsets.all(22),
                            child:Text(randomQuestion, textAlign: TextAlign.center, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 0, 0, 0)))),
                          ),
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
                      BoxDecoration(color: Color.fromRGBO(169, 12, 19, 1), borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        enableFeedback: false,
                        onTap: () {
                          changeText();
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,              
                          children: [ 
                            Text("Suivant", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 0, 0, 0)))),
                          ],
                        ),
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