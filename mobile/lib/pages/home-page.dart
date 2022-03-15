import 'package:flutter/material.dart';
import 'package:mobile/components/current-weather-info.dart';
import 'package:mobile/components/daily-forecast.dart';
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

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            title: Text('São Paulo, Brazil'),
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            centerTitle: true,
            collapsedHeight: 120,
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
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text('Monday, March 14, 8:00 PM'),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: 'Max '),
                          TextSpan(
                            text: '24º',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                          TextSpan(text: 'Min '),
                          TextSpan(
                            text: '18º',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Subtitles('Daily'),
                    DailyForecast(),
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
