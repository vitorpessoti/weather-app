import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile/models/city.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/utils/defs.dart';

class CitiesProvider with ChangeNotifier {
  int? id;
  String? type;
  String? city;
  String? name;
  String? country;
  String? countryCode;
  String? region;
  String? regionCode;
  String? latitude;
  String? longitude;
  String? population;
  List<City> _items = [];
  List<City> get items => [..._items];
  final String _baseUrl = '${Defs.API_URL}:${Defs.API_PORT}';

  Future<Map> getCitiesByNamePrefix(String namePrefix) async {
    _items.clear();
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    final response = await http.post(
      Uri.parse('${_baseUrl}/geocoding/namePrefix'),
      headers: requestHeaders,
      body: jsonEncode({"cityPrefix": namePrefix}),
    );

    Map<String, dynamic> responseData = jsonDecode(response.body);

    if (responseData['status']) {
      responseData['item']['data'].forEach((element) {
        _items.add(
          City(
            id: element['id'],
            type: element['type'],
            city: element['city'],
            name: element['name'],
            country: element['country'],
            countryCode: element['countryCode'],
            region: element['region'],
            regionCode: element['regionCode'],
            latitude: element['latitude'],
            longitude: element['longitude'],
            population: element['population'],
          ),
        );
      });
    } else {
      throw responseData;
    }

    notifyListeners();
    return responseData;
  }

  Future<Map> getCitiesByLatLong(double latitude, double longitude) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    final response = await http.post(
      Uri.parse('${_baseUrl}/geocoding/latLong'),
      headers: requestHeaders,
      body: jsonEncode({
        "latitude": latitude,
        "longitude": longitude,
      }),
    );

    Map responseData = jsonDecode(response.body);

    if (responseData['status']) {
      responseData['item']['data'].forEach((element) {
        _items.add(
          City(
            id: element['id'],
            type: element['type'],
            city: element['city'],
            name: element['name'],
            country: element['country'],
            countryCode: element['countryCode'],
            region: element['region'],
            regionCode: element['regionCode'],
            latitude: element['latitude'],
            longitude: element['longitude'],
            population: element['population'],
          ),
        );
      });
    } else {
      throw responseData;
    }

    notifyListeners();
    return responseData;
  }

  void clearCities() {
    _items.clear();
  }
}
