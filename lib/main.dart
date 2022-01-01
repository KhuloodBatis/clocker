import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Clocker());
}

class Clocker extends StatelessWidget {
  const Clocker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: FlatButton(
                          onPressed: () {
                            final player = AudioCache();
                            player.play('clock.wav');
                          },
                          child: const Icon(
                            Icons.access_alarm,
                            size: 200.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Text('Click On Clock ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white60,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
