import 'package:flutter/material.dart';
import 'package:mobile/pages/daily-forecast-details-page.dart';
import 'package:mobile/pages/home-page.dart';
import 'package:mobile/utils/app-routes.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  WeatherApp({Key? key}) : super(key: key);

  final ThemeData appTheme = ThemeData(
    fontFamily: 'PTSans',
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: appTheme.copyWith(
        colorScheme: appTheme.colorScheme.copyWith(
          primary: Colors.deepPurple,
          secondary: Colors.teal,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: appTheme.textTheme.copyWith(
          headline1: const TextStyle(
            fontSize: 24,
            fontFamily: 'PTSans',
          ),
          subtitle1: const TextStyle(
            fontSize: 18,
            fontFamily: 'PTSans',
            color: Colors.black,
          ),
        ),
        // pageTransitionsTheme: PageTransitionsTheme(
        //   builders: {
        //     TargetPlatform.iOS: CustomPageTransitionsBuilder(),
        //     TargetPlatform.android: CustomPageTransitionsBuilder(),
        //   },
        // ),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => HomePage(),
        // AppRoutes.DAILY_FORECAST: (ctx) => DailyForecastDetailsPage(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
