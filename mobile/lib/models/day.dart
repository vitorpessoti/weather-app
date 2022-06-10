import 'package:mobile/models/weather-details.dart';

class Day {
  final int month;
  final int day;
  final String weekDay;
  final String icon;
  final String weather;
  final int currentTemp;
  final int tempMax;
  final int tempMin;
  final int currentTime;
  final int sunrise;
  final int sunset;
  // final double precipitation;
  // final int wind;
  // final int pressure;
  // final int humidity;
  // final int dewPoint;
  // final int uvIndex;
  final List<WeatherDetails> weatherDetails;

  const Day({
    required this.month,
    required this.day,
    required this.weekDay,
    required this.icon,
    required this.weather,
    required this.currentTemp,
    required this.tempMax,
    required this.tempMin,
    required this.currentTime,
    required this.sunrise,
    required this.sunset,
    // required this.precipitation,
    // required this.wind,
    // required this.pressure,
    // required this.humidity,
    // required this.dewPoint,
    // required this.uvIndex,
    required this.weatherDetails,
  });
}
