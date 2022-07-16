import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile/components/weather-sliver-bar.dart';
import 'package:mobile/components/weather-sliver-list.dart';
import 'package:mobile/models/city.dart';
import 'package:mobile/providers/weather-provider.dart';
import 'package:mobile/utils/app-routes.dart';
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

    _loadForecast();
  }

  _loadForecast() async {
    final WeatherProvider weatherProvider = Provider.of(context, listen: false);

    try {
      Map forecastResponse = await weatherProvider.getForecast(
        widget.city.latitude,
        widget.city.longitude,
      );

      if (forecastResponse['status']) {
        _isLoading = false;
      } else {
        await showDialog<void>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text(forecastResponse['message']),
            content: Text(forecastResponse['item'].toString()),
            actions: [
              TextButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.SEARCH_PAGE),
                child: Text('OK'),
              )
            ],
          ),
        );
      }
    } catch (error) {
      Map<String, dynamic> errorObject = jsonDecode(jsonEncode(error));

      await showDialog<void>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(errorObject['message']),
          content: Text(errorObject['item'].toString()),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.SEARCH_PAGE),
              child: Text('OK'),
            )
          ],
        ),
      );
    }
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
