import 'package:flutter/material.dart';
import 'package:mobile/components/current-day.dart';
import 'package:mobile/components/current-weather-info.dart';
import 'package:mobile/components/daily-forecast.dart';
import 'package:mobile/components/hourly-forecast.dart';
import 'package:mobile/components/subtitles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> currentWeather = [
      {'title': 'Feels like', 'icon': 'feels-like', 'value': '21 ºC'},
      {'title': 'Precipitation', 'icon': 'precipitation', 'value': '0.3 mm'},
      {'title': 'Wind', 'icon': 'wind', 'value': '10 km/h'},
      {'title': 'Pressure', 'icon': 'pressure', 'value': '1000 hPa'},
      {'title': 'Humidity', 'icon': 'humidity', 'value': '85 %'},
      {'title': 'Dew point', 'icon': 'dew-point', 'value': '19 ºC'},
      {'title': 'UV index', 'icon': 'sun', 'value': '5 /10'},
    ];

    final List<Map<String, String>> dailyForecast = [
      {
        'weekDay': 'Tue',
        'monthDay': '15',
        'icon': 'light-rain',
        'tempMax': '26',
        'tempMin': '20'
      },
      {
        'weekDay': 'Wed',
        'monthDay': '16',
        'icon': 'sun',
        'tempMax': '27',
        'tempMin': '20'
      },
      {
        'weekDay': 'Thu',
        'monthDay': '17',
        'icon': 'sun',
        'tempMax': '28',
        'tempMin': '20'
      },
      {
        'weekDay': 'Fri',
        'monthDay': '18',
        'icon': 'storm-with-heavy-rain',
        'tempMax': '25',
        'tempMin': '19'
      },
      {
        'weekDay': 'Sat',
        'monthDay': '19',
        'icon': 'heavy-rain',
        'tempMax': '24',
        'tempMin': '18'
      },
      {
        'weekDay': 'Sun',
        'monthDay': '20',
        'icon': 'cloud-lightning',
        'tempMax': '25',
        'tempMin': '19'
      },
      {
        'weekDay': 'Mon',
        'monthDay': '21',
        'icon': 'cloud',
        'tempMax': '26',
        'tempMin': '19'
      },
    ];

    final List<Map<String, String>> hourlyForecast = [
      {
        'hour': '7',
        'ampm': 'PM',
        'icon': 'light-rain',
        'temp': '20',
      },
      {
        'hour': '8',
        'ampm': 'PM',
        'icon': 'light-rain',
        'temp': '20',
      },
      {
        'hour': '9',
        'ampm': 'PM',
        'icon': 'light-rain',
        'temp': '19',
      },
      {
        'hour': '10',
        'ampm': 'PM',
        'icon': 'light-rain',
        'temp': '19',
      },
      {
        'hour': '11',
        'ampm': 'PM',
        'icon': 'light-rain',
        'temp': '19',
      },
      {
        'hour': '12',
        'ampm': 'AM',
        'icon': 'light-rain',
        'temp': '18',
      },
      {
        'hour': '1',
        'ampm': 'AM',
        'icon': 'light-rain',
        'temp': '18',
      },
      {
        'hour': '2',
        'ampm': 'AM',
        'icon': 'light-rain',
        'temp': '18',
      },
      {
        'hour': '3',
        'ampm': 'AM',
        'icon': 'light-rain',
        'temp': '18',
      },
      {
        'hour': '4',
        'ampm': 'AM',
        'icon': 'light-rain',
        'temp': '18',
      },
      {
        'hour': '5',
        'ampm': 'AM',
        'icon': 'cloud',
        'temp': '18',
      },
      {
        'hour': '6',
        'ampm': 'AM',
        'icon': 'cloud',
        'temp': '18',
      },
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            title: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text('São Paulo, Brazil'),
            ),
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            centerTitle: true,
            collapsedHeight: 175,
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/rain.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '20ºC',
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Rain',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0, 0.8),
                                end: Alignment(0, 0),
                                colors: [
                                  Color.fromRGBO(0, 0, 0, 0.6),
                                  Color.fromRGBO(0, 0, 0, 0),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Monday, March 14, 6:00 PM'),
                    CurrentDay(),
                    Subtitles('Hourly forecast'),
                    HourlyForecast(hourlyForecast),
                    Subtitles('Daily forecast'),
                    DailyForecast(dailyForecast),
                    Subtitles('Current weather info'),
                    SizedBox(
                      height: 400,
                      child: GridView.builder(
                        itemCount: currentWeather.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 3 / 2.6,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                        ),
                        itemBuilder: (context, index) =>
                            CurrentWeatherInfo(currentWeather[index]),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
