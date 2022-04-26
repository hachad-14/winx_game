// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, use_key_in_widget_constructors, avoid_print
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:winx_game/screens/ac.dart';
import 'package:winx_game/screens/h.dart';

import '../../screens/av.dart';
import '../players.dart';

class GamesCarousel extends StatefulWidget {
  @override
  CarouselState createState() => CarouselState();
}

class CarouselState extends State<GamesCarousel> {

  int _currentIndex=0;

  List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 400,
          ),
          items: cardList.map((card){
            return Builder(
              builder:(BuildContext context){
                return Container(
                  height: MediaQuery.of(context).size.height*0.30,
                  width: MediaQuery.of(context).size.width,
                  child: Card(color: Colors.transparent,child: card,),
                );
              }
            );
          }).toList(),
        ),
      ]
    );
  }
}

class Item1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: 
      BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        enableFeedback: false,
        onTap: () {
          if (playersList.isEmpty) {
            Fluttertoast.showToast(msg:"Ajoutez des joueurs d'abord !");
          } else {
            Navigator.push(context,
              CupertinoPageRoute(builder:(context) => TruthOrDare()),
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("🔥", style: TextStyle(fontSize: 80)),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Action ou vérité", style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 255, 255, 1)))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Text("Jurez vérité, et jouez vos\nactions les conséquences seront irréversible !", textAlign: TextAlign.center, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)))),
                ],
              )
            ),
          ],
        ),

      ),
    );
  }
}

class Item2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: 
      BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        enableFeedback: false,
        onTap: () {
          if (playersList.isEmpty) {
            Fluttertoast.showToast(msg:"Ajoutez des joueurs d'abord !");
          } else {
            Navigator.push(context,
              CupertinoPageRoute(builder:(context) => ActionCommune()),
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("☠️", style: TextStyle(fontSize: 80)),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Actions commune", style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 255, 255, 1)))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Text("Les actions qui suivent devront\nêtre faites en groupe, aucun\néchapatoire !", textAlign: TextAlign.center, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)))),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
      BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        enableFeedback: false,
        onTap: () {
          if (playersList.isEmpty) {
            Fluttertoast.showToast(msg:"Ajoutez des joueurs d'abord !");
          } else {
            Navigator.push(context,
              CupertinoPageRoute(builder:(context) => SansLimites()),
            );
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("❌", style: TextStyle(fontSize: 80)),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Sans limites", style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 255, 255, 1)))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,              
                children: [
                  Text("Bienvue en enfer, il n'y a plus\nd'issue !", textAlign: TextAlign.center, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)))),
                  Padding(padding: EdgeInsets.only(top: 20)),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

class Item4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("object");
      },
      child: Container(
        decoration: 
        BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: Offset(0, 1), )]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Text("En développement...", style: TextStyle(color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}