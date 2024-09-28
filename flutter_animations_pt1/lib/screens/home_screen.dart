import 'package:flutter/material.dart';
import 'package:flutter_animations_pt1/core/helpers.dart';
import 'package:flutter_animations_pt1/screens/animated_container_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_list_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_opacity_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_positioned_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_switcher_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_text_style_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    List<String> animations = [
      AnimatedContainerScreen.id,
      AnimatedOpacityScreen.id,
      AnimatedTextStyleScreen.id,
      AnimatedListScreen.id,
      AnimatedPositionedScreen.id,
      AnimatedSwitcherScreen.id,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select animation:',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            for (var animation in animations)
              Container(
                margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, animation);
                  },
                  style: style(),
                  child: Text(
                    animation,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


