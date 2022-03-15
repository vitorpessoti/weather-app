import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final Map<String, String> item;
  const HourlyForecastItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('${item['hour']} ${item['ampm']}'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset(
              'assets/in_app_icons/${item['icon']}.png',
              width: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              '${item['temp']}º',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
