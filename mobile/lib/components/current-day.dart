import 'package:flutter/material.dart';

class CurrentDay extends StatelessWidget {
  const CurrentDay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: [
          TextSpan(text: 'Max '),
          TextSpan(
            text: '24º',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          TextSpan(text: 'Min '),
          TextSpan(
            text: '18º',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
