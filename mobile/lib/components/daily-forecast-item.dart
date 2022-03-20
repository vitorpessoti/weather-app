import 'package:flutter/material.dart';
import 'package:mobile/models/day.dart';
import 'package:mobile/pages/daily-forecast-details-page.dart';
// import 'package:mobile/utils/app-routes.dart';

class DailyForecastItem extends StatelessWidget {
  final Day item;
  const DailyForecastItem(this.item);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DailyForecastDetailsPage(item: item),
        ),
      ),
      child: Container(
        width: 120.0,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.teal.shade50,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text('${item.weekDay.substring(0, 3)} ${item.day.toString()}'),
            Image.asset('assets/in_app_icons/${item.icon}.png'),
            Text(
              '${item.tempMax.toString()}º - ${item.tempMin.toString()}º',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
