import 'package:flutter/material.dart';
import 'package:flutter_animations_pt1/core/helpers.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  static const id = 'Animated Container';

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
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
            AnimatedContainer(
              duration: const Duration(
                seconds: 1,
              ),
              color: toggle ? Colors.blueGrey : Colors.deepOrange,
              width: toggle ? 100 : 200,
              height: toggle ? 100 : 200,
            ),
            const SizedBox(height: 20,),
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
