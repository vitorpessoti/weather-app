import 'package:flutter/material.dart';

class DailyForecast extends StatelessWidget {
  const DailyForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 120.0,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text('Tue 15'),
                  Image.asset('assets/in_app_icons/light-rain.png'),
                  Text(
                    '26º - 20º',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              width: 120.0,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text('Wed 16'),
                  Image.asset('assets/in_app_icons/sun.png'),
                  Text(
                    '27º - 20º',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              width: 120.0,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text('Thu 17'),
                  Image.asset('assets/in_app_icons/sun.png'),
                  Text(
                    '28º - 20º',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              width: 120.0,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text('Fri 18'),
                  Image.asset('assets/in_app_icons/storm-with-heavy-rain.png'),
                  Text(
                    '25º - 19º',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              width: 120.0,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text('Sat 19'),
                  Image.asset('assets/in_app_icons/heavy-rain.png'),
                  Text(
                    '24º - 18º',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
