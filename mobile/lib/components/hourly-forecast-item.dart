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
        // color: Colors.teal,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(item.hour),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.network(
              'http://openweathermap.org/img/wn/${item.icon}@2x.png',
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
