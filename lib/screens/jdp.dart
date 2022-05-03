// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, use_key_in_widget_constructors, avoid_print, file_names, sized_box_for_whitespace
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:winx_game/api/screens_api/fortune_wheel.dart';

class JeuxDesProbs  extends StatefulWidget {
  @override
  Jdp  createState() => Jdp ();
}

class Jdp  extends State<JeuxDesProbs > {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 34, 35, 43),
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
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
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(
              height: 400,
              child: SpinWheel(),
            )
          ),
        ]),
      ),
    );
  }
}
