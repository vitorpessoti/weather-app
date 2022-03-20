import 'package:flutter/material.dart';
import 'package:mobile/components/daily-forecast-item.dart';
import 'package:mobile/models/day.dart';

class DailyForecast extends StatelessWidget {
  final List<Day> forecasts;
  const DailyForecast(this.forecasts);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView.builder(
          itemCount: forecasts.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => DailyForecastItem(forecasts[index]),
        ),
      ),
    );
  }
}
