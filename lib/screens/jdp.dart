// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, use_key_in_widget_constructors, avoid_print, file_names

import 'package:flutter/cupertino.dart';
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
        body: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Container(
              height: 100,
              child: SpinWheel(),
            )
          ),
        ]),
      ),
    );
  }
}
