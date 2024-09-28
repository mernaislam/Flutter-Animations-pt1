import 'package:flutter/material.dart';
import 'package:flutter_animations_pt1/core/helpers.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  static const id = 'Animated Opacity';

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
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
            AnimatedOpacity(
              opacity: toggle ? 0 : 1,
              duration: const Duration(
                seconds: 2,
              ),
              curve: Curves.easeInOut,
              child: Image.network(
                'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp',
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