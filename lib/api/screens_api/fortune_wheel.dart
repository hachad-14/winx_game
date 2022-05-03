// ignore_for_file: avoid_print, prefer_adjacent_string_concatenation

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

import '../players.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  _SpinWheelState createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  StreamController<int> selected = StreamController<int>.broadcast();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = playersList;

    return GestureDetector(
      onTap: () {
        setState(() {
          selected.add(
            Fortune.randomInt(0, items.length),
          );
        });
      },
      child: Column(
        children: [
          Expanded(
            child: FortuneWheel(
              onFling: () {
                selected.add(1);
              },
              onAnimationStart: () {
                setState(() {
                });
              },
              onAnimationEnd: () {
                  selected.stream.listen((Text) {
                    print('Value from controller: $Text');
                  }
                );
              },
              animateFirst: false,
              physics: CircularPanPhysics(
                duration: const Duration(seconds: 1),
                curve: Curves.elasticInOut,
              ),
              selected: selected.stream,
              items: [
                for (var it in items) FortuneItem(child: Text(it)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    print("object");
                  },
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration:
                    BoxDecoration(color: const Color.fromRGBO(0, 246, 113, 1), borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3),spreadRadius: 0.5,blurRadius: 2, offset: const Offset(0, 1), )]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Text("Rouler", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                    )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
