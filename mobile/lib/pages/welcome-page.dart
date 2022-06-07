import 'package:location/location.dart';
import 'package:flutter/material.dart';
import 'package:mobile/pages/home-page.dart';
import 'package:mobile/providers/cities-provider.dart';
import 'package:mobile/utils/app-routes.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _getCurrentLocation();
    });
  }

  _getCurrentLocation() async {
    final CitiesProvider citiesProvider = Provider.of(context, listen: false);
    try {
      final locData = await Location().getLocation();

      await citiesProvider.getCitiesByLatLong(
          locData.latitude!, locData.longitude!);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(city: citiesProvider.items.first),
        ),
      );
    } catch (error) {
      print(error);
      Navigator.of(context).pushNamed(AppRoutes.SEARCH_PAGE);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 80),
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
    // return FutureBuilder(
    //   future: _getCurrentLocation(),
    //   builder: (context, snapshot) {
    //     return Scaffold(
    //       backgroundColor: Colors.teal,
    //       body: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             padding: EdgeInsets.only(top: 80),
    //             child: CircularProgressIndicator(),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
