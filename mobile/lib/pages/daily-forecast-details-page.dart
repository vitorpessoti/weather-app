import 'package:flutter/material.dart';
import 'package:mobile/components/hourly-forecast-details-item.dart';
import 'package:mobile/components/subtitles.dart';
import 'package:mobile/data/dummy-data.dart';
import 'package:mobile/models/day.dart';

class DailyForecastDetailsPage extends StatelessWidget {
  final Day item;
  const DailyForecastDetailsPage({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final dummyHours = DUMMY_HOURS.where((hour) {
      return hour.month == item.month && hour.day == item.day;
    }).toList();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 70,
            pinned: true,
            title: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text('${item.weekDay}, ${item.day.toString()}'),
            ),
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            centerTitle: true,
            collapsedHeight: 70,
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/rain.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: dummyHours.length <= 0
                    ? Center(
                        child: Text('There is no forecast for this day.'),
                      )
                    : Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Subtitles('Hourly'),
                            SizedBox(
                              height: 500, // change this
                              child: ListView.builder(
                                itemCount: dummyHours.length,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) =>
                                    HourlyForecastDetailsItem(
                                        item: dummyHours[index]),
                              ),
                            ),
                          ],
                        ),
                      ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
