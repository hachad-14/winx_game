// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, use_key_in_widget_constructors, avoid_print
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'screens/av.dart';
import 'screens/ac.dart';
import 'screens/h.dart';
import 'api/players.dart';
import 'api/caroussel_api/carousel.dart';

class GameScreen extends StatefulWidget {
  @override
  StartGame createState() => StartGame();
}

class Spacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class CupertinoPopUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPopupSurface(
      child: Material(
        child: Container(
          padding: EdgeInsetsDirectional.all(0),
          color: Color.fromARGB(255, 34, 35, 43),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).copyWith().size.height*0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment(0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Ajouter des  joueurs", style: TextStyle(color: Color.fromRGBO(0, 246, 113, 1), fontSize: 30),),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 20),
                          child: Text("Joueurs par defaut: $playersList",style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Padding(
                            padding: EdgeInsets.only(top:30, bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: CupertinoTextField(
                              prefix: Icon(CupertinoIcons.person),
                              onSubmitted: (newPlayerName) {
                                playersList.insert(0,newPlayerName);
                                print(newPlayerName);
                              },
                              placeholder: "Joueurs",
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                  bottom: Radius.circular(10)
                                ),
                                color: Color.fromRGBO(0, 246, 113, 1),
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
      isSurfacePainted: true,
    );
  }
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("No Limits", style: GoogleFonts.anton(textStyle: TextStyle(fontSize: 35, color: Color.fromRGBO(255, 255, 255, 1)))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromRGBO(0, 246, 113, 1),
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext builder) {
                            return CupertinoPopUp();
                          }
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Choisissez un mode de jeu", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1)))),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: GamesCarousel(),
                ),
                Padding(padding: EdgeInsets.only(top: 20, bottom: 20),child: Spacer()),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
