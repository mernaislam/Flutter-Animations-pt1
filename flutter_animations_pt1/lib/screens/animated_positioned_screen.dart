import 'package:flutter/material.dart';
import 'package:flutter_animations_pt1/core/helpers.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({super.key});

  static const id = 'Animated Positioned';
  @override
  State<AnimatedPositionedScreen> createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.amber,
                height: 550,
                width: 500,
              ),
              AnimatedPositioned(
                duration: const Duration(seconds: 2),
                top: toggle ? 300 : 30,
                left: toggle ? 300 : 30,
                height: toggle ? 200 : 100,
                width: toggle ? 100 : 200,
                child: Container(
                  color: Colors.black,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                toggle = !toggle;
              });
            },
            style: style(),
            child: const Text(
              'Animate',
            ),
          )
        ],
      ),
    );
  }
}
