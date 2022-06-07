import 'package:flutter/material.dart';
import 'package:mobile/models/day.dart';

class CurrentDay extends StatelessWidget {
  // const CurrentDay({Key? key}) : super(key: key);
  final Day? day;
  const CurrentDay(this.day);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 14.0,
        ),
        children: [
          TextSpan(text: 'Max '),
          TextSpan(
            text: day != null ? '${day!.tempMax}º' : '24',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          TextSpan(text: 'Min '),
          TextSpan(
            text: day != null ? '${day!.tempMin}º' : '18',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
