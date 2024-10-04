import 'package:flutter/material.dart';

class Levels extends StatefulWidget {
  final String levelName;

  const Levels({super.key, required this.levelName});

  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {
  bool isSelected = false; 

  void _toggleSelection() {
    setState(() {
      isSelected = !isSelected; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: _toggleSelection,
        child: Container(
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(37),
            color: isSelected ? Colors.white : Color(0xff000D99), 
          ),
          child: Center(
            child: Text(
              widget.levelName,
              style: TextStyle(color: isSelected ? Colors.black : Colors.white), // Change text color based on selection
            ),
          ),
        ),
      ),
    );
  }
}
