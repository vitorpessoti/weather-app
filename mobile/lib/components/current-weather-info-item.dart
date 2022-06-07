import 'package:flutter/material.dart';
import 'package:mobile/models/weather-details.dart';

class CurrentWeatherInfoItem extends StatelessWidget {
  final WeatherDetails details;
  const CurrentWeatherInfoItem({
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade400,
      child: Container(
        child: Column(
          children: [
            Image.asset('assets/in_app_icons/${details.icon}.png'),
            Text(details.title),
            Text(
              '${details.value} ${details.unit}',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
