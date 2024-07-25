# Flutter Animations Part1 Tasks

1. **Create a Basic Animation with `AnimatedContainer`:**
   - Create a Flutter app with a `Scaffold` and a `Center` widget.
   - Use an `AnimatedContainer` to animate the color, width, and height of a container when a button is pressed.

2. **Fade In/Out Animation with `AnimatedOpacity`:**
   - Implement a button that toggles the opacity of a widget using `AnimatedOpacity`.
   - Animate the opacity between 0 (invisible) and 1 (fully visible).

3. **Animated Text Change with `AnimatedDefaultTextStyle`:**
   - Create a text widget that animates changes in its style (e.g., font size, color) using `AnimatedDefaultTextStyle`.

4. **Animated List Item with `AnimatedList`:**
   - Build a list of items that can be animated when items are added or removed using `AnimatedList`.

5. **Animated Position with `AnimatedPositioned`:**
   - Use `AnimatedPositioned` to animate the position of a widget within a `Stack` when a button is pressed.

6. **Animated Switch with `AnimatedSwitcher`:**
    - Use `AnimatedSwitcher` to animate the transition between two widgets when a state change occurs.

# Explaining The Following Flowchart:

<img width="600" alt="Screenshot 2024-07-25 at 9 04 13 pm" src="https://github.com/user-attachments/assets/c084c480-cc7e-45ba-bc72-a74622b44840">

- Use **Animation Framework Package** when it is diffcuilt to express in code and your animation is more like a visual drawing of what animation will do using graphics or you want to animate text, but not for its text style.
- Use **Custom Painter (Low-Level Animations)** when you want to translate what you see into box decorations and blend modes or you are having performance problems with your currently used animation widgets.
- Use `AnimatedDefaultTextStyle` if you want to animate the `TextStyle` of a `Text` widget
- Use `AnimatedFoo` if you animate a single child with non-repeating animation and you have a built-in widget for what you want, otherwise use `TweenAnimationBuilder`
- Use `FooTransition` if you animate multiple children with possible repetition of animation and you have a built-in widget for what you want, otherwise use `AnimatedBuilder`
