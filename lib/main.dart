// ignore_for_file: prefer_const_constructors, deprecated_member_use
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

class CupertinoPopUp extends StatelessWidget {
  const CupertinoPopUp({Key? key}) : super(key: key);

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Consignes à respecter !',style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 25, color: Color.fromRGBO(0, 246, 113, 1)))),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 250,
                        width: 300,
                        child: Text("Voici quelques consignes:\n-Il est strictement interdit de refuser n'importe quelle action ou vérité\n-Aucun joueur ne doit quitter la partie sans l'accord du groupe\n-Celui qui refuse une action aura une gage.", textAlign: TextAlign.left ,style: GoogleFonts.poppins(textStyle:TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)))),
                      )
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
                child: Text('Winx b0.5',style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 22),)),
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
                      Image.asset("assets/images/text.gif",),
                      //Text("No Limits", style: GoogleFonts.anton(textStyle: TextStyle(fontSize: 55, color: Color.fromRGBO(255, 255, 255, 1)))),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,    
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: FlatButton(
                        splashColor: Colors.transparent,  
                        highlightColor: Colors.transparent,
                        child: Text('> Jouer', style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 55, color: Color.fromRGBO(0, 246, 113, 1)))),
                        onPressed: () {
                           Navigator.push(context,
                            CupertinoPageRoute(builder:(context) => GameScreen()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: InkWell(
                        onTap: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (BuildContext builder) {
                              return CupertinoPopUp();
                            }
                          );
                        },
                        child: Container(
                          height: 45,
                          width: 230,
                          decoration: BoxDecoration(color: Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(10)),
                          child:Text('> Instructions', textAlign: TextAlign.center, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 28, color: Color.fromARGB(255, 0, 0, 0)))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 180),
                      child: Text("Developpé par Hachad Saad.", style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10, color: Color.fromRGBO(255, 255, 255, 1)))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}