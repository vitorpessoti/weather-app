import 'package:flutter/material.dart';

class CurrentWeatherInfo extends StatelessWidget {
  final Map<String, String> item;
  const CurrentWeatherInfo(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        child: Column(
          children: [
            Image.asset('assets/in_app_icons/${item['icon']}.png'),
            Text(item['title']!),
            Text(
              item['value']!,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
