import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Animated Container')),
        body: AnimatedContainerExample(),
      ),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _isExpanded = false; // Kenglik holati

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isExpanded = !_isExpanded; // Kenglikni o'zgartirish
          });
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 1), // Animatsiya vaqti
          width: _isExpanded ? 200 : 100, // Kenglik
          height: 100, // Balandlik
          color: _isExpanded ? Colors.blue : Colors.red, // Rang
          alignment: Alignment.center,
          child: Text(
            'Tap Me!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
