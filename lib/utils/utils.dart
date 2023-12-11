
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheSliderInTopState extends StatefulWidget {
  const TheSliderInTopState({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;

  @override
  _TheSliderInTopState createState() => _TheSliderInTopState();
}

class _TheSliderInTopState extends State<TheSliderInTopState> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200, // Adjust the width to your preference
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(100),
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(
              widget.icon,
              size: 40,
            ),
          ),
          Text(
            widget.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }
}

