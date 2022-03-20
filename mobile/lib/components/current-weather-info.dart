import 'package:flutter/material.dart';
import 'package:mobile/components/current-weather-info-item.dart';
import 'package:mobile/models/weather-details.dart';

class CurrentWeatherInfo extends StatelessWidget {
  final List<WeatherDetails> item;
  const CurrentWeatherInfo(this.item);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        itemCount: item.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 3 / 2.6,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) =>
            CurrentWeatherInfoItem(details: item[index]),
      ),
    );
  }
}
