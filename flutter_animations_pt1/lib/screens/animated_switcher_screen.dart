import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animations_pt1/core/helpers.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({super.key});

  static const id = 'Animated Switcher';
  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: animation,
                  child: child,
                );
              },
              child: toggle
                  ? Container(
                      key: const ValueKey(1),
                      height: 100,
                      width: 200,
                      color: Colors.blue,
                    )
                  : Container(
                      key: const ValueKey(2),
                      height: 200,
                      width: 100,
                      color: Colors.black,
                    ),
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
      ),
    );
  }
}
