import 'package:flutter/material.dart';
import 'package:flutter_animations_pt1/core/helpers.dart';

class AnimatedTextStyleScreen extends StatefulWidget {
  const AnimatedTextStyleScreen({super.key});

  static const id = 'Animated Default TextStyle';

  @override
  State<AnimatedTextStyleScreen> createState() => _AnimatedTextStyleScreenState();
}

class _AnimatedTextStyleScreenState extends State<AnimatedTextStyleScreen> {
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
            AnimatedDefaultTextStyle(
              duration: const Duration(
                seconds: 1,
              ),
              style: TextStyle(
                color: toggle ? Colors.black : Colors.red,
                fontSize: toggle ? 30 : 20,
                fontWeight: toggle ? FontWeight.bold : FontWeight.normal,
              ),
              child: const Text(
                'Some text is animated here',
              ),
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