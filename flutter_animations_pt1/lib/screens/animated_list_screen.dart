import 'package:flutter/material.dart';

class AnimatedListScreen extends StatefulWidget {
  const AnimatedListScreen({super.key});

  static const id = 'Animated List';
  @override
  State<AnimatedListScreen> createState() => _AnimatedListScreenState();
}

class _AnimatedListScreenState extends State<AnimatedListScreen> {
  final GlobalKey<AnimatedListState> _key = GlobalKey();
  List<int> items = [];

  void _addItem() {
    items.insert(0, items.isEmpty ? 0 : items[0] + 1);
    _key.currentState!.insertItem(
      0,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }

  void _removeItem(int idx) {
    _key.currentState!.removeItem(
      idx,
      (context, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            color: Colors.red,
            child: ListTile(
              title: Text('Removing...'),
            ),
          ),
        );
      },
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    items.removeAt(idx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedList(
          key: _key,
          itemBuilder: (context, index, animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: Card(
                color: Colors.teal,
                child: ListTile(
                  title: Text("item ${items[index]}"),
                  trailing: IconButton(
                    onPressed: () {
                      _removeItem(index);
                    },
                    icon: const Icon(
                      Icons.delete,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
