import 'package:flutter/material.dart';
import 'package:mobile/models/hour.dart';

class HourlyForecastDetailsItem extends StatelessWidget {
  final Hour item;
  const HourlyForecastDetailsItem({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(item.hour),
          Spacer(),
          Image.asset('assets/in_app_icons/feels-like.png', width: 24),
          Text('${item.temp.toString()}ºC'),
          Spacer(),
          Image.asset('assets/in_app_icons/humidity.png', width: 24),
          Text('${item.humidity.toString()}%'),
          Spacer(),
          Image.asset('assets/in_app_icons/wind.png', width: 24),
          Text('${item.windSpeed.toString()} km/h'),
          // Text('\u{1F4A7} 80 % \u{1F32C} 10 km/h'),
        ],
      ),
    );
  }
}
