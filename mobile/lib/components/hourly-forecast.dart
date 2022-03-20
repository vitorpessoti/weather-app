import 'package:flutter/material.dart';
import 'package:mobile/components/hourly-forecast-item.dart';
import 'package:mobile/models/hour.dart';

class HourlyForecast extends StatelessWidget {
  final List<Hour> forecasts;
  const HourlyForecast(this.forecasts);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView.builder(
          itemCount: forecasts.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => HourlyForecastItem(forecasts[index]),
        ),
        // child: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: <Widget>[
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('7 PM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '20º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('8 PM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '20º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('9 PM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '19º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('10 PM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '19º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('11 PM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '19º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('12 AM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '18º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('1 AM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '18º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('2 AM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '18º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('3 AM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '18º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('4 AM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '18º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('5 AM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '18º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //     Container(
        //       width: 50.0,
        //       margin: EdgeInsets.all(2),
        //       decoration: BoxDecoration(
        //         color: Colors.teal.shade50,
        //         borderRadius: BorderRadius.circular(8),
        //       ),
        //       child: Column(
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text('6 AM'),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Image.asset(
        //               'assets/in_app_icons/light-rain.png',
        //               width: 30,
        //             ),
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: Text(
        //               '18º',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
