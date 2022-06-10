import 'package:flutter/material.dart';
import 'package:mobile/components/weather-sliver-bar.dart';
import 'package:mobile/components/weather-sliver-list.dart';
import 'package:mobile/models/city.dart';
import 'package:mobile/providers/weather-provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);
  final City city;
  const HomePage({required this.city});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _isLoading = true;
    });

    Provider.of<WeatherProvider>(
      context,
      listen: false,
    ).getForecast(widget.city.latitude, widget.city.longitude).then((value) {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final WeatherProvider weatherProvider = Provider.of(context);

    return _isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Scaffold(
            backgroundColor: weatherProvider.today!.currentTime >
                    weatherProvider.today!.sunset
                ? Colors.grey.shade900
                : Colors.blue.shade400,
            body: CustomScrollView(
              slivers: [
                WeatherSliverBar(
                  city: widget.city,
                  day: weatherProvider.today!,
                ),
                WeatherSliverList(
                  today: weatherProvider.today!,
                  dailyForecasts: weatherProvider.getDailyForecast,
                  hourlyForecasts: weatherProvider.getHourlyForecast,
                ),
              ],
            ),
          );
  }
}
