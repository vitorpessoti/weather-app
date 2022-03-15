import 'package:flutter/material.dart';

class DailyForecastItem extends StatelessWidget {
  final Map<String, String> item;
  const DailyForecastItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text('${item['weekDay']} ${item['monthDay']}'),
          Image.asset('assets/in_app_icons/${item['icon']}.png'),
          Text(
            '${item['tempMax']}º - ${item['tempMin']}º',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
