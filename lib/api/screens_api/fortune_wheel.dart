// ignore_for_file: avoid_print, prefer_adjacent_string_concatenation

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class SpinWheel extends StatefulWidget {
  @override
  _SpinWheelState createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  int e = 0;
  Stream<int> selected = const Stream<int>.empty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 500,
            child: FortuneWheel(
              animateFirst: false,
              selected: selected,
              physics: CircularPanPhysics(
                duration: Duration(seconds: 2),
                curve: Curves.decelerate,
              ),
              onFling: () {
                setState(() {
                  selected = Random().nextInt(4);
                });
              },
              styleStrategy: const UniformStyleStrategy(
                borderColor: Colors.black,
                color: Colors.red,
                borderWidth: 5,
              ),
              items: const [
                FortuneItem(child: Text("Tizou", style: TextStyle(
                  color: Colors.white,
                ),)),
                FortuneItem(child: Text("Zazari", style: TextStyle(
                  color: Colors.white,
                ),)),
                FortuneItem(child: Text("Oussama", style: TextStyle(
                  color: Colors.white,
                ),)),
                FortuneItem(child: Text("Spaka", style: TextStyle(
                  color: Colors.white,
                ),)),
              ],
              onAnimationEnd: () {
                print("Value : " + "$selected");
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selected = Random().nextInt(4);
              });
            },
            child: Container(
              color: Colors.blue,
              height: 20,
              width: 100,
              child: const Center(child: Text("SPIN"),),
            ),
          )
        ],
      ),
    );
  }
}
