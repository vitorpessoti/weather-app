import 'package:flutter/material.dart';
import 'package:mobile/models/hour.dart';

class HourlyForecastItem extends StatelessWidget {
  final Hour item;
  const HourlyForecastItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('${item.hour.toString()} ${item.ampm}'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              'assets/in_app_icons/${item.icon}.png',
              width: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              '${item.temp.toString()}º',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
