import 'package:flutter/material.dart';

class Subtitles extends StatelessWidget {
  final String subtitle;
  const Subtitles(this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Text(
        subtitle,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
