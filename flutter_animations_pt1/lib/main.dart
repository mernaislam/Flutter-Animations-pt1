import 'package:flutter/material.dart';
import 'package:flutter_animations_pt1/screens/animated_container_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_list_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_opacity_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_positioned_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_switcher_screen.dart';
import 'package:flutter_animations_pt1/screens/animated_text_style_screen.dart';
import 'package:flutter_animations_pt1/screens/home_screen.dart';

void main() {
  runApp(const AnimationsApp());
}

class AnimationsApp extends StatelessWidget {
  const AnimationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        HomeScreen.id : (context) => const HomeScreen(),
        AnimatedContainerScreen.id : (context) => const AnimatedContainerScreen(),
        AnimatedOpacityScreen.id : (context) => const AnimatedOpacityScreen(),
        AnimatedTextStyleScreen.id : (context) => const AnimatedTextStyleScreen(),
        AnimatedListScreen.id : (context) => const AnimatedListScreen(),
        AnimatedPositionedScreen.id : (context) => const AnimatedPositionedScreen(),
        AnimatedSwitcherScreen.id : (context) => const AnimatedSwitcherScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
