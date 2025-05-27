import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const Buttons(
      {super.key,
      required this.title,
      this.color = const Color(0xffa5a5a5),
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
